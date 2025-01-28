import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:vikrf_thesis/core/utils/app_dimens.dart';
import 'package:vikrf_thesis/features/dashboard/presentation/widgets/chart_holder.dart';
import 'package:vikrf_thesis/features/dashboard/presentation/widgets/samples/line_chart_sample.dart';
import 'package:vikrf_thesis/features/home/presentation/bloc/home_bloc.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
        if (state is HomeInitialState) {
          return MasonryGridView.builder(
            itemCount: 1,
            shrinkWrap: true,
            key: ValueKey(state.pageName),
            padding: const EdgeInsets.only(
              left: AppDimens.chartSamplesSpace,
              right: AppDimens.chartSamplesSpace,
              top: AppDimens.chartSamplesSpace,
              bottom: AppDimens.chartSamplesSpace + 68,
            ),
            crossAxisSpacing: AppDimens.chartSamplesSpace,
            mainAxisSpacing: AppDimens.chartSamplesSpace,
            itemBuilder: (BuildContext context, int index) {
              return const ChartHolder(
                chartName: 'Спальня',
                widget: LineChartSample1(),
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
