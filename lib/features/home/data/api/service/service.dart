import 'package:vikrf_thesis/features/home/data/api/model/api_metric.dart';

abstract class Service {
  Future<ApiMetric> fetch(String uuid);
}
