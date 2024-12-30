import 'package:vikrf_thesis/features/home/data/api/home_app_util.dart';
import 'package:vikrf_thesis/features/home/domain/entity/metric_entity.dart';
import 'package:vikrf_thesis/features/home/domain/repository/home_repository.dart';

class HomeDataRepository extends HomeRepository {
  final HomeAppUtil _homeAppUtil;

  HomeDataRepository(this._homeAppUtil);

  @override
  Future<MetricEntity> fetch({required String uuid}) {
    return _homeAppUtil.fetch(uuid: uuid);
  }
}
