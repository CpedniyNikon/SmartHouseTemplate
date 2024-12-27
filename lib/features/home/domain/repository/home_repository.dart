import 'package:vikrf_thesis/features/home/domain/entity/metric_entity.dart';

abstract class HomeRepository {
  Future<MetricEntity> fetch({required String uuid});
}
