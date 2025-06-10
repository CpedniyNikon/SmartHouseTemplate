import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vikrf_thesis/core/constants/app_assets.dart';
import 'package:vikrf_thesis/core/utils/menu_list.dart';
import 'package:vikrf_thesis/features/home/presentation/widgets/menu_row.dart';

class ChartMenuItem {
  final PageList chartType;
  final String text;
  final String iconPath;

  const ChartMenuItem(this.chartType, this.text, this.iconPath);
}

class AppMenu extends StatefulWidget {
  final List<ChartMenuItem> menuItems;
  final int currentSelectedIndex;
  final Function(int, ChartMenuItem) onItemSelected;

  const AppMenu(
      {super.key,
      required this.menuItems,
      required this.currentSelectedIndex,
      required this.onItemSelected});

  @override
  AppMenuState createState() => AppMenuState();
}

class AppMenuState extends State<AppMenu> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 160,
                height: 160,
                child: SvgPicture.asset(
                  AppAssets.vikLogoText,
                  colorFilter: ColorFilter.mode(
                      Theme.of(context).textTheme.headlineLarge!.color!,
                      BlendMode.srcIn),
                ),
              ),
              const Expanded(
                child: Text(
                  'Smart-House',
                ),
              )
            ],
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
