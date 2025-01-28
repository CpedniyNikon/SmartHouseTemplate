import 'package:vikrf_thesis/core/utils/menu_list.dart';

class AppAssets {
  static String getChartIcon(PageList type) {
    switch (type) {
      case PageList.devices:
        return 'assets/icons/ic_bar_chart.svg';
      case PageList.analytics:
        return 'assets/icons/ic_pie_chart.svg';
      case PageList.settings:
        return 'assets/icons/ic_radar_chart.svg';
      case PageList.dashboard:
        return 'assets/icons/ic_radar_chart.svg';
    }
  }

  static const vikLogoText = 'assets/icons/vik_logo.png';
}
