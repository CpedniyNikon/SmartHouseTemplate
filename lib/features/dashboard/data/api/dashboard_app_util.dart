import 'package:vikrf_thesis/features/dashboard/data/api/service/service.dart';
import 'package:vikrf_thesis/features/dashboard/data/mapper/metric_mapper.dart';
import 'package:vikrf_thesis/features/dashboard/domain/entity/metric_entity.dart';

class DashboardAppUtil {
  final Service _service;

  DashboardAppUtil(this._service);

  Future<MetricEntity> fetch({
    required String uuid,
  }) async {
    final result = await _service.fetch(uuid);
    return MetricMapper.fromApi(result);
  }
}
