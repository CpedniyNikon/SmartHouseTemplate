import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:vikrf_thesis/core/utils/menu_list.dart';
import 'package:vikrf_thesis/features/home/presentation/widgets/home_appbar.dart';
import 'package:vikrf_thesis/features/home/presentation/widgets/app_menu.dart';
import 'package:vikrf_thesis/features/home/presentation/bloc/home_bloc.dart';
import 'package:vikrf_thesis/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:vikrf_thesis/features/settings/presentation/settings_screen.dart';

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
    _menuItems = PageList.values.mapIndexed(
      (int index, PageList type) {
        _menuItemsIndices[type] = index;
        return ChartMenuItem(
          type,
          type.displayName,
          type.assetIcon,
        );
      },
    ).toList();
  }

  late final Map<PageList, int> _menuItemsIndices;
  late final List<ChartMenuItem> _menuItems;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeBlocState>(
      builder: (context, HomeBlocState state) => PopScope(
        child: Scaffold(
          appBar: const HomeAppbar(),
          body: Row(
            children: [
              AppMenu(
                menuItems: _menuItems,
                currentSelectedIndex:
                    _menuItemsIndices[(state as HomeBlocStateInitial).pageName]!,
                onItemSelected: (newIndex, menuItem) {
                  context
                      .read<HomeBloc>()
                      .add(HomeBlocEventPageChange(pageName: menuItem.chartType));
                },
              ),
              const VerticalDivider(),
              Expanded(
                  child: BlocBuilder<SettingsBloc, SettingsBlocState>(
                builder: (BuildContext context, SettingsBlocState state) =>
                    Container(child: widget.navigationShell),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
