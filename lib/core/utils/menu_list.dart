import 'package:flutter/foundation.dart';
import 'package:vikrf_thesis/core/utils/app_assets.dart';

enum MenuList { dashboard, devices, analytics, settings }

extension MenuListExtension on MenuList {
  String get displayName => '$simpleName menu';

  String get simpleName => switch (this) {
    MenuList.devices => 'Devices',
    MenuList.analytics => 'Analytics',
    MenuList.settings => 'Settings',
    MenuList.dashboard => 'Dashboard',
  };

  String get assetIcon => AppAssets.getChartIcon(this);

  String get name => toString().split('.').last;
}
