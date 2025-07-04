import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vikrf_thesis/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:vikrf_thesis/features/auth/presentation/bloc/auth_event.dart';
import 'package:vikrf_thesis/features/auth/presentation/bloc/auth_state.dart';
import 'package:vikrf_thesis/features/auth/presentation/widgets/login_layout.dart';

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
                const Center(
                  child: LoginLayout(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
