import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:vikrf_thesis/core/constants/app_dimens.dart';
import 'package:vikrf_thesis/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:vikrf_thesis/features/dashboard/presentation/widgets/chart_holder.dart';
import 'package:vikrf_thesis/features/dashboard/presentation/widgets/samples/sh_line_chart.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      context.read<DashboardBloc>().add(DashboardBlocEventFetch());
    });
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocBuilder<DashboardBloc, DashboardBlocState>(
          builder: (context, state) {
        if (state is DashboardBlocStateFetched) {
          return MasonryGridView.builder(
            itemCount: state.metrics.data.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(
                left: AppDimens.chartSamplesSpace,
                right: AppDimens.chartSamplesSpace,
                top: AppDimens.chartSamplesSpace,
                bottom: AppDimens.chartSamplesSpace + 68,
                ),
            crossAxisSpacing: AppDimens.chartSamplesSpace,
            mainAxisSpacing: AppDimens.chartSamplesSpace,
            itemBuilder: (BuildContext context, int index) {
              return ChartHolder(
                chartName: state.metrics.data[index].chartName,
                widget: SHLineChart(data: state.metrics.data[index].xAxis),
              );
            },
            gridDelegate: const SliverSimpleGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 600,
            ),
          );
        }
        return const Dialog(
          backgroundColor: Colors.transparent,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(),
              Text("Loading"),
            ],
          ),
        );
      }),
    );
  }
}
