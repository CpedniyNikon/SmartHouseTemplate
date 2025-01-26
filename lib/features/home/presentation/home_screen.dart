import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:vikrf_thesis/core/utils/app_colors.dart';
import 'package:vikrf_thesis/core/utils/menu_list.dart';
import 'package:vikrf_thesis/features/home/presentation/widgets/home_appbar.dart';
import 'package:vikrf_thesis/features/home/presentation/widgets/app_menu.dart';
import 'package:vikrf_thesis/features/home/presentation/bloc/home_bloc.dart';

class HomeScreen extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const HomeScreen({super.key, required this.navigationShell});

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
          return LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Scaffold(
                appBar: const HomeAppbar(),
                body: Container(
                  color: AppColors.menuBackground,
                  child: Row(
                    children: [
                      AppMenu(
                        menuItems: _menuItems,
                        currentSelectedIndex:
                            _menuItemsIndices[state.showingChartType]!,
                        onItemSelected: (newIndex, menuItem) {
                          context.read<HomeBloc>().add(
                              FetchEvent(showingChartType: menuItem.chartType));
                        },
                      ),
                      Expanded(child: widget.navigationShell),
                    ],
                  ),
                ),
              );
            },
          );
        }
        return const Dialog(
          backgroundColor: Colors.transparent,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(),
              Text("Loading"),
            ],
          ),
        );
      },
    );
  }
}
