import 'package:vikrf_thesis/core/utils/menu_list.dart';

class AppAssets {
  static String getChartIcon(MenuList type) {
    switch (type) {
      case MenuList.devices:
        return 'assets/icons/ic_bar_chart.svg';
      case MenuList.analytics:
        return 'assets/icons/ic_pie_chart.svg';
      case MenuList.settings:
        return 'assets/icons/ic_radar_chart.svg';
      case MenuList.dashboard:
        return 'assets/icons/ic_radar_chart.svg';
    }
  }

  static const vikLogoText = 'assets/icons/vik_logo.png';
}
