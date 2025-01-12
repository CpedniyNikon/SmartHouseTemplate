import 'package:vikrf_thesis/core/utils/menu_list.dart';
import 'package:vikrf_thesis/features/home/presentation/widgets/chart_sample.dart';
import 'package:vikrf_thesis/features/home/presentation/widgets/samples/line_chart_sample.dart';

class ChartSamples {
  static final Map<MenuList, List<ChartSample>> samples = {
    MenuList.overview: [
      LineChartSample(1, (context) => const LineChartSample1()),
    ],
    MenuList.devices: [],
    MenuList.analytics: [],
    MenuList.rules: [],
    MenuList.gallery: [],
    MenuList.history: [],
    MenuList.settings: [],
  };
}
