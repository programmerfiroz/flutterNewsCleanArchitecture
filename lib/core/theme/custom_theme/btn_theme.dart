import 'package:flutter/material.dart';
import 'package:newsapp/core/constants/colors.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  static ButtonStyle lightElevatedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: AppColors.primary,
    foregroundColor: AppColors.white,
    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
    textStyle: const TextStyle(fontSize: 16.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(100),
    ),
  );

  static ButtonStyle darkElevatedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: AppColors.primary,
    foregroundColor: AppColors.white,
    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
    textStyle: const TextStyle(fontSize: 16.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(100),
    ),
  );
}
