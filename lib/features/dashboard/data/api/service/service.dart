
import 'package:vikrf_thesis/features/dashboard/data/api/model/api_metric.dart';

abstract class Service {
  Future<ApiMetric> fetch(String uuid);
}
