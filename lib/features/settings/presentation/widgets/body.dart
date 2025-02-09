import 'package:flutter/material.dart';
import 'package:vikrf_thesis/features/settings/presentation/widgets/theme_switch.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ThemeSwitch(),
        ],
      ),
    );
  }
}
