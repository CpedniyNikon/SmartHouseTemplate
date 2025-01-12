import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:vikrf_thesis/core/utils/app_dimens.dart';
import 'package:vikrf_thesis/core/utils/menu_list.dart';
import 'package:vikrf_thesis/features/home/presentation/bloc/bloc_bloc.dart';
import 'package:vikrf_thesis/features/home/presentation/widgets/body.dart';
import 'package:vikrf_thesis/features/home/presentation/widgets/home_appbar.dart';
import 'package:vikrf_thesis/features/home/presentation/widgets/menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
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
          final selectedMenuIndex =
          _menuItemsIndices[state.showingChartType]!;
          return LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              final needsDrawer = constraints.maxWidth <=
                  AppDimens.menuMaxNeededWidth + AppDimens.chartBoxMinWidth;
              final appMenuWidget = AppMenu(
                menuItems: _menuItems,
                currentSelectedIndex: selectedMenuIndex,
                onItemSelected: (newIndex, chartMenuItem) {
                  context.go('/${chartMenuItem.chartType.name}');
                  context
                      .read<HomeBloc>()
                      .add(FetchEvent(showingChartType: chartMenuItem.chartType));
                  if (needsDrawer) {
                    Navigator.of(context).pop();
                  }
                },
              );
              final body = needsDrawer
                  ? const Body()
                  : Row(
                children: [
                  SizedBox(
                    width: AppDimens.menuMaxNeededWidth,
                    child: appMenuWidget,
                  ),
                  const Expanded(
                    child: Body(),
                  )
                ],
              );
              return Scaffold(
                appBar: HomeAppbar(
                  automaticallyImplyLeading: needsDrawer,
                ),
                body: body,
                drawer: needsDrawer
                    ? Drawer(
                  child: appMenuWidget,
                )
                    : null,
              );
            },
          );
        }
        return Container();
      },
    );
  }
}
