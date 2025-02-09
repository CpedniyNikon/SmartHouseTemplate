import 'package:flutter/material.dart';

@immutable
sealed class AuthBlocEvent {
  const AuthBlocEvent();
}

class AuthBlocEventSignIn extends AuthBlocEvent {
  final String email;
  final String password;

  const AuthBlocEventSignIn(this.email, this.password);
}

class AuthBlocEventSignUp extends AuthBlocEvent {
  final String email;
  final String password;

  const AuthBlocEventSignUp(this.email, this.password);
}

class AuthBlocEventLogOut extends AuthBlocEvent {}
