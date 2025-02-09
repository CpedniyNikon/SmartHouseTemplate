import 'package:flutter/material.dart';
import 'package:vikrf_thesis/core/constants/app_colors.dart';
import 'package:vikrf_thesis/core/constants/app_dimens.dart';

class AppTheme {
  final AppColors chosenColor;

  AppTheme(
    this.chosenColor,
  );

  ThemeData getTheme() {
    final sizes = AppDimens();

    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        surface: chosenColor.backgroundColor,
        seedColor: chosenColor.primaryColor,
        primary: chosenColor.primaryColor,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: chosenColor.appbarColor,
        titleTextStyle: TextStyle(
          fontFamily: 'Inter',
          fontSize: sizes.largeText,
          color: chosenColor.textColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          color: chosenColor.textColor,
          fontSize: sizes.normalText,
        ),
        headlineLarge: TextStyle(
          color: chosenColor.textColor,
          fontSize: sizes.largeText,
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(chosenColor.primaryColor),
          foregroundColor:
              MaterialStateProperty.all<Color>(chosenColor.whiteColor),
          textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(
              fontSize: sizes.smallText,
            ),
          ),
        ),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.all<Color>(chosenColor.primaryColor),
        overlayColor:
            MaterialStateProperty.all<Color>(chosenColor.backgroundColor),
        trackColor:
            MaterialStateProperty.all<Color>(chosenColor.backgroundColor),
        trackOutlineColor:
            MaterialStateProperty.all<Color>(chosenColor.backgroundColor),
      ),
    );
  }
}
