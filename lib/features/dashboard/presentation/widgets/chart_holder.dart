import 'package:flutter/material.dart';
import 'package:vikrf_thesis/core/utils/app_colors.dart';
import 'package:vikrf_thesis/core/utils/app_dimens.dart';

class ChartHolder extends StatelessWidget {
  final String chartName;
  final Widget widget;

  const ChartHolder({
    super.key,
    required this.chartName, required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            const SizedBox(width: 6),
            Text(
              chartName,
              style: const TextStyle(
                color: AppColors.primary,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(child: Container()),
            IconButton(
              onPressed: () => {},
              icon: const Icon(
                Icons.code,
                color: AppColors.primary,
              ),
              tooltip: 'Source code',
            ),
          ],
        ),
        const SizedBox(height: 2),
        Container(
          decoration: const BoxDecoration(
            color: AppColors.itemsBackground,
            borderRadius:
            BorderRadius.all(Radius.circular(AppDimens.defaultRadius)),
          ),
          child: widget,
        ),
      ],
    );
  }
}