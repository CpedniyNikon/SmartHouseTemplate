import 'package:vikrf_thesis/core/internal/dependencies/api_module.dart';
import 'package:vikrf_thesis/features/auth/data/repository/auth_data_repository.dart';
import 'package:vikrf_thesis/features/auth/domain/repository/auth_repository.dart';
import 'package:vikrf_thesis/features/home/data/repository/home_data_repository.dart';
import 'package:vikrf_thesis/features/home/domain/repository/home_repository.dart';

class RepositoryModule {
  static final AuthRepository _authRepository =
      AuthDataRepository(ApiModule.authApiUtil());
  static final HomeRepository _homeRepository =
      HomeDataRepository(ApiModule.homeApiUtil());

  static AuthRepository authRepository() {
    return _authRepository;
  }

  static HomeRepository homeRepository() {
    return _homeRepository;
  }
}
