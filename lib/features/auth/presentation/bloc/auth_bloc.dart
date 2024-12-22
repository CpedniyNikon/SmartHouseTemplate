import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vikrf_thesis/features/auth/domain/repository/auth_repository.dart';
import 'package:vikrf_thesis/core/utils/domain/repository/navigation_service.dart';
import 'package:vikrf_thesis/features/auth/presentation/bloc/auth_event.dart';
import 'package:vikrf_thesis/features/auth/presentation/bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  final INavigationService _navigationService;

  AuthBloc(this._authRepository, this._navigationService)
      : super(AuthInitialState()) {
    on<SignInEvent>(_onSignIn);
    on<LogOutEvent>(_onLogout);
  }

  void _onSignIn(SignInEvent event, Emitter<AuthState> emit) {
    _authRepository.login(email: event.email, password: event.password);
    emit(AuthSuccessState());
    _navigationService.navigateToHome();
  }

  void _onLogout(LogOutEvent event, Emitter<AuthState> emit) {
    _authRepository.logout(uuid: 'uuid');
    emit(AuthInitialState());
  }
}
