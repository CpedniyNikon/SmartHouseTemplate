import 'package:vikrf_thesis/features/dashboard/data/api/model/api_metric.dart';
import 'package:vikrf_thesis/features/dashboard/domain/entity/chart_entity.dart';
import 'package:vikrf_thesis/features/dashboard/domain/entity/metric_entity.dart';

import 'chart_mapper.dart';

class MetricMapper {
  static MetricEntity fromApi(ApiMetric metric) {
    final data = metric.data.map((e) => ChartMapper.fromApi(e)).toList();
    return MetricEntity(data: data);
  }
}
