import 'package:flutter/material.dart';
import 'package:vikrf_thesis/features/auth/presentation/widgets/body.dart';
import 'package:vikrf_thesis/features/auth/presentation/widgets/login_appbar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: LoginAppbar(),
      body: Body(),
    );
  }
}
