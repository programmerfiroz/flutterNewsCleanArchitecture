import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/core/theme/custom_theme/text_theme.dart';

enum ThemeType { system, light, dark }

class ThemeController extends GetxController {
  var selectedTheme = ThemeType.system.obs;

  // Method to get the ThemeMode based on selectedTheme
  ThemeMode getThemeMode() {
    switch (selectedTheme.value) {
      case ThemeType.light:
        return ThemeMode.light;
      case ThemeType.dark:
        return ThemeMode.dark;
      case ThemeType.system:
      default:
        return ThemeMode.system;
    }
  }

  // Method to change the theme
  void setTheme(ThemeType newTheme) {
    selectedTheme.value = newTheme;
  }

  TextTheme getCurrentTextTheme(
      BuildContext context, ThemeController themeController) {
    // Check the selected theme
    if (themeController.selectedTheme.value == ThemeType.dark) {
      return AppTextTheme.darkTextTheme(context);
    } else if (themeController.selectedTheme.value == ThemeType.light) {
      return AppTextTheme.lightTextTheme(context);
    } else {
      // Check the system brightness
      final brightness = MediaQuery.of(context).platformBrightness;
      return (brightness == Brightness.dark)
          ? AppTextTheme.darkTextTheme(context)
          : AppTextTheme.lightTextTheme(context);
    }
  }
}
