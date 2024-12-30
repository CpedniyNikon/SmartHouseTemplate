import 'package:vikrf_thesis/features/home/data/api/model/api_metric.dart';
import 'package:vikrf_thesis/features/home/data/api/service/service.dart';

class MockService implements Service {
  @override
  Future<ApiMetric> fetch(String uuid) async {
    await Future.delayed(const Duration(seconds: 1));
    final response = {'email': 'test.email', 'password': 'test.password'};
    return ApiMetric.fromApi(response);
  }
}
