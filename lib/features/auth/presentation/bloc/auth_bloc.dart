import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vikrf_thesis/features/auth/domain/repository/auth_repository.dart';
import 'package:vikrf_thesis/core/utils/domain/repository/navigation_service.dart';
import 'package:vikrf_thesis/features/auth/presentation/bloc/auth_event.dart';
import 'package:vikrf_thesis/features/auth/presentation/bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  final AuthRepository _authRepository;
  final INavigationService _navigationService;

  AuthBloc(this._authRepository, this._navigationService)
      : super(AuthBlocStateInitial()) {
    on<AuthBlocEventSignIn>(_onSignIn);
    on<AuthBlocEventLogOut>(_onLogout);
  }

  void _onSignIn(AuthBlocEventSignIn event, Emitter<AuthBlocState> emit) {
    _authRepository.login(email: event.email, password: event.password);
    emit(AuthBlocStateSuccess());
    _navigationService.navigateToHome();
  }

  void _onLogout(AuthBlocEventLogOut event, Emitter<AuthBlocState> emit) {
    _authRepository.logout(uuid: 'uuid');
    emit(AuthBlocStateInitial());
    _navigationService.navigateToLogin();
  }
}
