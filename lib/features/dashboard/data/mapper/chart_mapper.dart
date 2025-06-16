import 'package:vikrf_thesis/features/dashboard/data/api/model/api_chart.dart';
import 'package:vikrf_thesis/features/dashboard/domain/entity/chart_entity.dart';

class ChartMapper {
  static ChartEntity fromApi(ApiChart chart) {
    return ChartEntity(chartName: chart.chartName, xAxis: chart.xAxis, yAxis: chart.yAxis);
  }
}
