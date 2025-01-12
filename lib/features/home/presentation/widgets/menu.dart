import 'package:flutter/material.dart';
import 'package:vikrf_thesis/core/utils/app_assets.dart';
import 'package:vikrf_thesis/core/utils/app_colors.dart';
import 'package:vikrf_thesis/core/utils/menu_list.dart';
import 'package:vikrf_thesis/features/home/presentation/widgets/menu_row.dart';

class AppMenu extends StatefulWidget {
  final List<ChartMenuItem> menuItems;
  final int currentSelectedIndex;
  final Function(int, ChartMenuItem) onItemSelected;

  const AppMenu({
    super.key,
    required this.menuItems,
    required this.currentSelectedIndex,
    required this.onItemSelected
  });

  @override
  AppMenuState createState() => AppMenuState();
}

class AppMenuState extends State<AppMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.itemsBackground,
      child: Column(
        children: [
          Image.asset(
            AppAssets.vikLogoText,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, position) {
                final menuItem = widget.menuItems[position];
                return MenuRow(
                  text: menuItem.text,
                  svgPath: menuItem.iconPath,
                  isSelected: widget.currentSelectedIndex == position,
                  onTap: () {
                    widget.onItemSelected(position, menuItem);
                  },
                );
              },
              itemCount: widget.menuItems.length,
            ),
          ),
        ],
      ),
    );
  }
}


class ChartMenuItem {
  final MenuList chartType;
  final String text;
  final String iconPath;

  const ChartMenuItem(this.chartType, this.text, this.iconPath);
}
