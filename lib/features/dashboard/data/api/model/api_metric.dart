import 'api_chart.dart';

class ApiMetric {
  final List<ApiChart> data;

  ApiMetric({required this.data});

  factory ApiMetric.fromApi(Map<String, dynamic> map) {
    final dataList = map['data'] as List<dynamic>? ?? [];

    final charts = dataList
        .map((item) => ApiChart.fromApi(item as Map<String, dynamic>))
        .toList();

    return ApiMetric(data: charts);
  }
}
