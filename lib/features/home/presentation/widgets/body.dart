import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:vikrf_thesis/core/utils/app_colors.dart';
import 'package:vikrf_thesis/core/utils/app_dimens.dart';
import 'package:vikrf_thesis/features/home/presentation/bloc/bloc_bloc.dart';
import 'package:vikrf_thesis/features/home/presentation/widgets/chart_holder.dart';
import 'package:vikrf_thesis/features/home/presentation/widgets/chart_samples.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final samples = ChartSamples.samples;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.menuBackground,
      child: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
        if (state is HomeFetchedState) {
          return MasonryGridView.builder(
            itemCount: samples[state.showingChartType]!.length,
            key: ValueKey(state.showingChartType),
            padding: const EdgeInsets.only(
              left: AppDimens.chartSamplesSpace,
              right: AppDimens.chartSamplesSpace,
              top: AppDimens.chartSamplesSpace,
              bottom: AppDimens.chartSamplesSpace + 68,
            ),
            crossAxisSpacing: AppDimens.chartSamplesSpace,
            mainAxisSpacing: AppDimens.chartSamplesSpace,
            itemBuilder: (BuildContext context, int index) {
              return ChartHolder(chartSample: samples[state.showingChartType]![index]);
            },
            gridDelegate: const SliverSimpleGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 600,
            ),
          );
        }
        return Container();
      }),
    );
  }
}
