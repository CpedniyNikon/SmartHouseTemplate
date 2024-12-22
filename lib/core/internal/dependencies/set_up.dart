import 'package:get_it/get_it.dart';
import 'package:vikrf_thesis/core/internal/dependencies/repository_module.dart';
import 'package:vikrf_thesis/features/auth/domain/repository/auth_repository.dart';

Future<void> setUp() async {
  GetIt.I.registerSingleton<AuthRepository>(RepositoryModule.authRepository());
}