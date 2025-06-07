import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:vikrf_thesis/features/dashboard/data/api/model/api_metric.dart';
import 'package:vikrf_thesis/features/dashboard/data/api/service/service.dart';

class MockService implements Service {
  @override
  Future<ApiMetric> fetch(String uuid) async {
    debugPrint("fetch");
    await Future.delayed(const Duration(seconds: 1));
    final response = {'data': List.generate(7, (_) => Random().nextInt(6))};
    return ApiMetric.fromApi(response);
  }
}
