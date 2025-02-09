import 'package:flutter/material.dart';

@immutable
abstract class AuthBlocState {
  const AuthBlocState();
}

class AuthBlocStateInitial extends AuthBlocState {}

class AuthBlocStateLoading extends AuthBlocState {
  final String email;
  final String password;

  const AuthBlocStateLoading(this.email, this.password);
}

class AuthBlocStateSuccess extends AuthBlocState {}

class AuthBlocStateError extends AuthBlocState {
  final String email;
  final String password;
  final String errorToShow;

  const AuthBlocStateError(this.email, this.password, this.errorToShow);
}
