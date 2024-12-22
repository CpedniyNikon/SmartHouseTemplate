import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:vikrf_thesis/core/internal/dependencies/set_up.dart';
import 'package:vikrf_thesis/features/auth/domain/repository/auth_repository.dart';
import 'package:vikrf_thesis/core/utils/domain/repository/navigation_service.dart';
import 'package:vikrf_thesis/features/auth/presentation/bloc/auth_bloc.dart';

import 'core/internal/application.dart';

Future<void> main() async {
  setPathUrlStrategy();
  await setUp();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => AuthBloc(
              GetIt.I<AuthRepository>(), GetIt.I<INavigationService>()),
        ),
      ],
      child: const Application(),
    ),
  );
}
