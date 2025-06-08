class ApiMetric {
  final List<Map<String, List<int>>> data;

  ApiMetric({required this.data});

  factory ApiMetric.fromApi(Map<String, dynamic> map) {
    // Parse the raw data into the correct structure
    final rawData = map['data'] as List? ?? [];
    final parsedData = rawData.map((item) {
      if (item is Map<String, dynamic>) {
        return item.map((key, value) {
          if (value is List) {
            return MapEntry(key, List<int>.from(value));
          }
          return MapEntry(key, <int>[]);
        });
      }
      return <String, List<int>>{};
    }).toList();

    return ApiMetric(data: parsedData);
  }
}
