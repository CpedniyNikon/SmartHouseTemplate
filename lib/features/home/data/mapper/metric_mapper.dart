
import 'package:vikrf_thesis/features/auth/data/api/model/api_user.dart';
import 'package:vikrf_thesis/features/auth/domain/entity/user_entity.dart';
import 'package:vikrf_thesis/features/home/data/api/model/api_metric.dart';
import 'package:vikrf_thesis/features/home/domain/entity/metric_entity.dart';

class MetricMapper {
  static MetricEntity fromApi(ApiMetric metric) {
    return MetricEntity();
  }
}
