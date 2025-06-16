class ApiChart {
  final String chartName;
  final List<int> xAxis;
  final List<int> yAxis;

  ApiChart({
    required this.chartName,
    required this.xAxis,
    required this.yAxis,
  });

  factory ApiChart.fromApi(Map<String, dynamic> map) {
    return ApiChart(
      chartName: map['chartName'] as String? ?? '',
      xAxis: (map['xAxis'] as List<dynamic>? ?? [])
          .map((e) => int.tryParse(e.toString()) ?? 0)
          .toList(),
      yAxis: (map['yAxis'] as List<dynamic>? ?? [])
          .map((e) => int.tryParse(e.toString()) ?? 0)
          .toList(),
    );
  }
}
