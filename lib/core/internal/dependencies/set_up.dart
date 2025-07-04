import 'package:get_it/get_it.dart';
import 'package:vikrf_thesis/core/internal/dependencies/repository_module.dart';
import 'package:vikrf_thesis/core/internal/routes.dart';
import 'package:vikrf_thesis/core/utils/data/repository/navigation_service_impl.dart';
import 'package:vikrf_thesis/features/auth/domain/repository/auth_repository.dart';
import 'package:vikrf_thesis/core/utils/domain/repository/navigation_service.dart';
import 'package:vikrf_thesis/features/dashboard/domain/repository/dashboard_repository.dart';

import 'api_module.dart';

Future<void> setUp() async {
  await ApiModule.init();
  GetIt.I.registerSingleton<AuthRepository>(RepositoryModule.authRepository());
  GetIt.I.registerSingleton<DashboardRepository>(RepositoryModule.dashboardRepository());
  GetIt.I.registerSingleton<INavigationService>(
    NavigationServiceImpl(router),
  );
}
