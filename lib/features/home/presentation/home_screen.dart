import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:vikrf_thesis/core/utils/menu_list.dart';
import 'package:vikrf_thesis/features/home/presentation/widgets/home_appbar.dart';
import 'package:vikrf_thesis/features/dashboard/presentation/widgets/menu.dart';
import 'package:vikrf_thesis/features/home/presentation/bloc/bloc_bloc.dart';

class HomeScreen extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const HomeScreen({super.key, required this.navigationShell});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _scaffoldKey.currentState!.openDrawer();
    });
    _initMenuItems();
  }

  void _initMenuItems() {
    _menuItemsIndices = {};
    _menuItems = MenuList.values.mapIndexed(
      (int index, MenuList type) {
        _menuItemsIndices[type] = index;
        return ChartMenuItem(
          type,
          type.displayName,
          type.assetIcon,
        );
      },
    ).toList();
  }

  late final Map<MenuList, int> _menuItemsIndices;
  late final List<ChartMenuItem> _menuItems;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, HomeState state) {
        if (state is HomeFetchedState) {
          final selectedMenuIndex = _menuItemsIndices[state.showingChartType]!;
          return LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              final appMenuWidget = AppMenu(
                menuItems: _menuItems,
                currentSelectedIndex: selectedMenuIndex,
                onItemSelected: (newIndex, menuItem) {
                  context
                      .read<HomeBloc>()
                      .add(FetchEvent(showingChartType: menuItem.chartType));
                },
              );
              final body = widget.navigationShell;
              return Scaffold(
                key: _scaffoldKey,
                appBar: const HomeAppbar(),
                body: body,
                drawer: Drawer(
                  child: appMenuWidget,
                ),
              );
            },
          );
        }
        return Container();
      },
    );
  }
}
