import 'package:flutter/cupertino.dart';
import 'package:vikrf_thesis/core/utils/menu_list.dart';

abstract class ChartSample {
  final int number;
  final WidgetBuilder builder;
  MenuList get type;
  String get name => '${type.displayName} Sample $number';
  ChartSample(this.number, this.builder);
}

class LineChartSample extends ChartSample {
  LineChartSample(super.number, super.builder);
  @override
  MenuList get type => MenuList.overview;
}