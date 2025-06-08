import 'dart:math';

import 'package:vikrf_thesis/features/dashboard/data/api/model/api_metric.dart';
import 'package:vikrf_thesis/features/dashboard/data/api/service/service.dart';

class MockService implements Service {
  @override
  Future<ApiMetric> fetch(String uuid) async {
    await Future.delayed(const Duration(seconds: 1));

    final List<String> roomList = [
      'Спальня',
      'Туалет',
      'Прихожая',
      'Ванная',
      'Коридор',
    ];


    final response = {
      'data': [
        {roomList[Random().nextInt(roomList.length)]: List.generate(7, (_) => Random().nextInt(6))}
      ]
    };
    return ApiMetric.fromApi(response);
  }
}
