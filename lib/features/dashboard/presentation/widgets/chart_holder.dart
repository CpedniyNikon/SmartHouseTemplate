import 'package:flutter/material.dart';

class ChartHolder extends StatelessWidget {
  final String chartName;
  final Widget widget;

  const ChartHolder({
    super.key,
    required this.chartName,
    required this.widget,
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
            ),
            Expanded(child: Container()),
            IconButton(
              onPressed: () => {},
              icon: const Icon(
                Icons.code,
              ),
              tooltip: 'Source code',
            ),
          ],
        ),
        const SizedBox(height: 2),
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            border: Border.all(
              width: 4
            )
          ),
          child: widget,
        ),
      ],
    );
  }
}
