import 'package:flutter/material.dart';
import 'package:newsapp/core/constants/colors.dart';
import 'package:newsapp/core/theme/custom_theme/appbar_theme.dart';
import 'package:newsapp/core/theme/custom_theme/icon_theme.dart';
import 'package:newsapp/core/theme/custom_theme/text_theme.dart';

class AppTheme {
  AppTheme._();

  // Method to get light theme, requires BuildContext for responsive text
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      scaffoldBackgroundColor: AppColors.white,
      brightness: Brightness.light,
      primaryColorLight: AppColors.primary,
      textTheme: AppTextTheme.lightTextTheme(
          context), // Pass context for responsive text
      appBarTheme: AppAppbarTheme.lightAppBarTheme,
      iconTheme: AppIconTheme.lightIconTheme,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.black,
        foregroundColor: AppColors.white,
      ),

      // ElevatedButtonThemeData
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
          textStyle: const TextStyle(fontSize: 16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
      cardTheme: const CardTheme(
          color: AppColors.white, shadowColor: AppColors.primary, elevation: 3),
      navigationBarTheme: const NavigationBarThemeData(
        backgroundColor: AppColors.secondary,
        indicatorColor: AppColors.white,
      ),
      searchBarTheme: const SearchBarThemeData(
        backgroundColor: WidgetStatePropertyAll(AppColors.white),
      ),
      bottomSheetTheme:
          const BottomSheetThemeData(backgroundColor: AppColors.white),
      drawerTheme: const DrawerThemeData(
        backgroundColor: AppColors.white,
      ),
    );
  }

  // Method to get dark theme, requires BuildContext for responsive text
  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      scaffoldBackgroundColor: AppColors.primary,
      brightness: Brightness.dark,
      primaryColorDark: AppColors.primary,
      textTheme: AppTextTheme.darkTextTheme(
          context), // Pass context for responsive text
      appBarTheme: AppAppbarTheme.darkAppBarTheme,
      iconTheme: AppIconTheme.darkIconTheme,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.black,
      ),

      // ElevatedButtonThemeData
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.accent,
          foregroundColor: AppColors.white,
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
          textStyle: const TextStyle(fontSize: 16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
      cardTheme: const CardTheme(
        color: AppColors.primary,
        shadowColor: AppColors.white,
        elevation: 0,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.primary,
      ),
      navigationBarTheme: const NavigationBarThemeData(
        backgroundColor: AppColors.white,
        indicatorColor: Color.fromARGB(255, 93, 123, 0),
      ),
      searchBarTheme: const SearchBarThemeData(
        backgroundColor: WidgetStatePropertyAll(AppColors.primary),
      ),
      bottomSheetTheme:
          const BottomSheetThemeData(backgroundColor: AppColors.white),
      drawerTheme: const DrawerThemeData(
        backgroundColor: AppColors.primary,
      ),
    );
  }
}
