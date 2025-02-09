import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vikrf_thesis/config/themes/app_theme.dart';
import 'package:vikrf_thesis/core/constants/app_colors.dart';
import 'package:vikrf_thesis/core/internal/routes.dart';
import 'package:vikrf_thesis/features/settings/presentation/bloc/settings_bloc.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsBlocState>(
      builder: (context, state) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: state.isDark
              ? AppTheme(AppColors.darkColors).getTheme()
              : AppTheme(AppColors.mainColors).getTheme(),
          routerConfig: router,
        );
      },
    );
  }
}
