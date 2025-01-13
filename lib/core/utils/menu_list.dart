import 'package:flutter/foundation.dart';
import 'package:vikrf_thesis/core/utils/app_assets.dart';

enum MenuList { overview, devices, analytics, rules, gallery, history, settings }

extension MenuListExtension on MenuList {
  String get displayName => '$simpleName menu';

  String get simpleName => switch (this) {
    MenuList.overview => 'Overview',
    MenuList.devices => 'Devices',
    MenuList.analytics => 'Analytics',
    MenuList.rules => 'Rules',
    MenuList.gallery => 'Gallery',
    MenuList.history => 'History',
    MenuList.settings => 'Settings',
  };

  String get assetIcon => AppAssets.getChartIcon(this);

  String get name => toString().split('.').last;
}
