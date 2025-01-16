import 'package:flutter/material.dart';
import 'package:vikrf_thesis/features/dashboard/presentation/widgets/body.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Body();
  }
}
