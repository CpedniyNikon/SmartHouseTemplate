import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(height: 0, color: Colors.black),
        Expanded(
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Image.asset(
                    'assets/bgs/bg.png',
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
