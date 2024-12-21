import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:vikrf_thesis/core/internal/dependencies/set_up.dart';

import 'core/internal/application.dart';

Future<void> main() async {
  setPathUrlStrategy();
  await setUp();
  runApp(
    MultiBlocProvider(
      providers: [],
      child: const Application(),
    ),
  );
}
