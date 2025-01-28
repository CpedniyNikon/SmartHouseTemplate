import 'package:vikrf_thesis/core/utils/app_assets.dart';

enum PageList { dashboard, devices, analytics, settings }

extension PageListExtension on PageList {
  String get displayName => '$simpleName menu';

  String get simpleName => switch (this) {
    PageList.devices => 'Devices',
    PageList.analytics => 'Analytics',
    PageList.settings => 'Settings',
    PageList.dashboard => 'Dashboard',
  };

  String get assetIcon => AppAssets.getChartIcon(this);

  String get name => toString().split('.').last;
}
