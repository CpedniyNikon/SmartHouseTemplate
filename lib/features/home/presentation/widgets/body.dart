import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vikrf_thesis/core/utils/app_dimens.dart';
import 'package:vikrf_thesis/core/utils/chart_type.dart';
import 'package:vikrf_thesis/features/home/presentation/widgets/menu.dart';
import 'package:dartx/dartx.dart';

class Body extends StatelessWidget {
  Body({super.key, required this.showingChartType}) {
    _initMenuItems();
  }

  void _initMenuItems() {
    _menuItemsIndices = {};
    _menuItems = ChartType.values.mapIndexed(
      (int index, ChartType type) {
        _menuItemsIndices[type] = index;
        return ChartMenuItem(
          type,
          type.displayName,
          type.assetIcon,
        );
      },
    ).toList();
  }

  final ChartType showingChartType;
  late final Map<ChartType, int> _menuItemsIndices;
  late final List<ChartMenuItem> _menuItems;

  @override
  Widget build(BuildContext context) {
    final selectedMenuIndex = _menuItemsIndices[showingChartType]!;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final needsDrawer = constraints.maxWidth <=
            AppDimens.menuMaxNeededWidth + AppDimens.chartBoxMinWidth;
        return Column(
          children: [
            const Divider(height: 0, color: Colors.black),
            Expanded(
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height,
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Image.asset(
                        'assets/bgs/bg.png',
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: AppDimens.menuMaxNeededWidth,
                          child: AppMenu(
                            menuItems: _menuItems,
                            currentSelectedIndex: selectedMenuIndex,
                            onItemSelected: (newIndex, chartMenuItem) {
                              context.go('/${chartMenuItem.chartType.name}');
                              if (needsDrawer) {
                                /// to close the drawer
                                Navigator.of(context).pop();
                              }
                            },
                            onBannerClicked: () => () {},
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
