import 'package:flutter/material.dart';

@immutable
sealed class AuthBlocState {
  const AuthBlocState();
}

class AuthBlocStateInitial extends AuthBlocState {}

class AuthBlocStateLoading extends AuthBlocState {
  const AuthBlocStateLoading();
}

class AuthBlocStateSuccess extends AuthBlocState {
}

class AuthBlocStateError extends AuthBlocState {
  final String error;

  const AuthBlocStateError(this.error);
}
