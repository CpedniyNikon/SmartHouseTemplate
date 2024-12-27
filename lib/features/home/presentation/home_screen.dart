import 'package:flutter/material.dart';
import 'package:vikrf_thesis/core/utils/chart_type.dart';
import 'package:vikrf_thesis/features/home/presentation/widgets/body.dart';
import 'package:vikrf_thesis/features/home/presentation/widgets/home_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required this.showingChartType,
  });

  final ChartType showingChartType;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppbar(),
      body: Body(
        showingChartType: widget.showingChartType,
      ),
    );
  }
}
