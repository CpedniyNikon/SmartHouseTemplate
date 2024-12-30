import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vikrf_thesis/features/auth/presentation/widgets/body.dart';
import 'package:vikrf_thesis/features/auth/presentation/widgets/login_appbar.dart';
import 'package:vikrf_thesis/features/home/presentation/bloc/bloc_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(FetchEvent());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: LoginAppbar(),
      body: Body(),
    );
  }
}
