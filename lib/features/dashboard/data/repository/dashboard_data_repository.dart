import 'package:vikrf_thesis/features/dashboard/data/api/dashboard_app_util.dart';
import 'package:vikrf_thesis/features/dashboard/domain/entity/metric_entity.dart';
import 'package:vikrf_thesis/features/dashboard/domain/repository/dashboard_repository.dart';

class DashboardDataRepository extends DashboardRepository {
  final DashboardAppUtil _homeAppUtil;

  DashboardDataRepository(this._homeAppUtil);

  @override
  Future<MetricEntity> fetch({required String uuid}) {
    return _homeAppUtil.fetch(uuid: uuid);
  }
}
