import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vikrf_thesis/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:vikrf_thesis/features/auth/presentation/bloc/auth_state.dart';
import 'package:vikrf_thesis/features/auth/presentation/widgets/authorization_form.dart';

class LoginLayout extends StatefulWidget {
  const LoginLayout({super.key});

  @override
  State<LoginLayout> createState() => _LoginLayoutState();
}

class _LoginLayoutState extends State<LoginLayout> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlocBuilder<AuthBloc, AuthBlocState>(
          builder: (BuildContext context, AuthBlocState state) {
            return switch (state) {
              AuthBlocStateInitial _ => const Text(''),
              AuthBlocStateSuccess _ =>
                const Text('you successfully logged in'),
              AuthBlocStateError _ =>
                Text('ошибка при авторизации ${state.errorToShow}'),
              AuthBlocState _ => const CircularProgressIndicator(),
            };
          },
        ),
        const AuthorizationForm(),
      ],
    );
  }
}
