class ApiMetric {
  final List<int> data;

  ApiMetric.fromApi(Map<String, dynamic> map)
      : data = List<int>.from(map['data'] ?? []);
}
