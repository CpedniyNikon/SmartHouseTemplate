import 'package:vikrf_thesis/features/home/data/api/service/service.dart';
import 'package:vikrf_thesis/features/home/data/mapper/metric_mapper.dart';
import 'package:vikrf_thesis/features/home/domain/entity/metric_entity.dart';

class HomeAppUtil {
  final Service _service;

  HomeAppUtil(this._service);

  Future<MetricEntity> fetch({
    required String uuid,
  }) async {
    final result = await _service.fetch(uuid);
    return MetricMapper.fromApi(result);
  }
}
