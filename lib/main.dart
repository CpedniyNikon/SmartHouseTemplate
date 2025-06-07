import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:vikrf_thesis/core/internal/dependencies/set_up.dart';
import 'package:vikrf_thesis/features/auth/domain/repository/auth_repository.dart';
import 'package:vikrf_thesis/core/utils/domain/repository/navigation_service.dart';
import 'package:vikrf_thesis/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:vikrf_thesis/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:vikrf_thesis/features/home/presentation/bloc/home_bloc.dart';
import 'package:vikrf_thesis/features/settings/presentation/bloc/settings_bloc.dart';

import 'core/internal/application.dart';
import 'core/internal/dependencies/api_module.dart';
import 'features/dashboard/domain/repository/dashboard_repository.dart';

Future<void> main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  await setUp();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => AuthBloc(
              GetIt.I<AuthRepository>(), GetIt.I<INavigationService>()),
        ),
        BlocProvider(
          create: (BuildContext context) => HomeBloc(
              GetIt.I<INavigationService>()),
        ),
        BlocProvider(
          create: (BuildContext context) => SettingsBloc(),
        ),
        BlocProvider(
          create: (BuildContext context) => DashboardBloc(
            GetIt.I<AuthRepository>(), GetIt.I<DashboardRepository>()
          ),
        ),
      ],
      child: const Application(),
    ),
  );
}
