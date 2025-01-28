import 'package:vikrf_thesis/core/internal/dependencies/api_module.dart';
import 'package:vikrf_thesis/features/auth/data/repository/auth_data_repository.dart';
import 'package:vikrf_thesis/features/auth/domain/repository/auth_repository.dart';
import 'package:vikrf_thesis/features/dashboard/data/repository/dashboard_data_repository.dart';
import 'package:vikrf_thesis/features/dashboard/domain/repository/dashboard_repository.dart';

class RepositoryModule {
  static final AuthRepository _authRepository =
      AuthDataRepository(ApiModule.authApiUtil());
  static final DashboardRepository _dashboardRepository =
      HomeDataRepository(ApiModule.dashboardApiUtil());

  static AuthRepository authRepository() {
    return _authRepository;
  }

  static DashboardRepository dashboardRepository() {
    return _dashboardRepository;
  }
}
