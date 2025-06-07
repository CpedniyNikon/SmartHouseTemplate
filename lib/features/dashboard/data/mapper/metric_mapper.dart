import 'package:vikrf_thesis/features/dashboard/data/api/model/api_metric.dart';
import 'package:vikrf_thesis/features/dashboard/domain/entity/metric_entity.dart';

class MetricMapper {
  static MetricEntity fromApi(ApiMetric metric) {
    return MetricEntity(data: metric.data);
  }
}
