import 'package:vikrf_thesis/features/dashboard/domain/entity/metric_entity.dart';

abstract class DashboardRepository {
  Future<MetricEntity> fetch({required String uuid});
}
