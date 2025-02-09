import 'package:flutter/material.dart';

class AppColors {
  final Color appbarColor;
  final Color whiteColor;
  final Color blackColor;
  final Color backgroundColor;
  final Color textColor;
  final Color primaryColor;

  AppColors({
    required this.appbarColor,
    required this.whiteColor,
    required this.blackColor,
    required this.backgroundColor,
    required this.textColor,
    required this.primaryColor,
  });

  // ========================================================
  // Main color theme
  static final mainColors = AppColors(
    appbarColor: const Color(0xffffffff),
    whiteColor: const Color(0xffFFFFFF),
    blackColor: const Color(0xff000000),
    backgroundColor: const Color(0xffedeef0),
    textColor: const Color.fromARGB(255, 55, 56, 56),
    primaryColor: const Color.fromARGB(255, 90, 154, 192),
  );

  // ========================================================
  // Dark color theme
  static final darkColors = AppColors(
    appbarColor: const Color(0xff222222),
    whiteColor: const Color(0xff000000),
    blackColor: const Color(0xffFFFFFF),
    backgroundColor: const Color(0xff141414),
    textColor: const Color.fromARGB(255, 255, 255, 255),
    primaryColor: const Color.fromARGB(255, 154, 169, 178),
  );
}
