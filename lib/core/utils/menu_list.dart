import 'package:vikrf_thesis/core/constants/app_assets.dart';

enum PageList { dashboard, devices, analytics, settings }

extension PageListExtension on PageList {
  String get displayName => '$simpleName';

  String get simpleName => switch (this) {
    PageList.devices => 'Устройства',
    PageList.analytics => 'Аналитика',
    PageList.settings => 'Настройки',
    PageList.dashboard => 'Дашборд',
  };

  String get assetIcon => AppAssets.getChartIcon(this);

  String get name => toString().split('.').last;
}
