import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vikrf_thesis/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:vikrf_thesis/features/auth/presentation/bloc/auth_state.dart';
import 'package:vikrf_thesis/features/auth/presentation/widgets/authorization_form.dart';
import 'package:go_router/go_router.dart';

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
        BlocBuilder<AuthBloc, AuthState>(
          builder: (BuildContext context, AuthState state) {
            return switch (state) {
              AuthInitialState _ => const Text('Войдите в учетную запись'),
              AuthSuccessState _ => const Text('you successfully logged in'),
              AuthErrorState _ =>
                Text('ошибка при авторизации ${state.errorToShow}'),
              AuthState _ => throw const Placeholder(),
            };
          },
        ),
        const AuthorizationForm(),
      ],
    );
  }
}
