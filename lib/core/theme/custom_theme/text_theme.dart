import 'package:flutter/material.dart';
import 'package:newsapp/core/constants/colors.dart';

class AppTextTheme {
  AppTextTheme._();

  // Method to calculate dynamic font size based on screen width
  static double getResponsiveFontSize(
      BuildContext context, double baseFontSize) {
    double screenWidth = MediaQuery.of(context).size.width;
    // Define the base width you want to use for scaling, e.g., iPhone 11
    double baseWidth = 375.0;
    // Define the maximum width for scaling
    double maxWidth = 550.0;

    // Calculate the responsive font size
    if (screenWidth > maxWidth) {
      // If the screen width exceeds the maximum width, use the font size based on maxWidth
      return baseFontSize * (maxWidth / baseWidth);
    } else {
      // Otherwise, scale normally based on the actual screen width
      return baseFontSize * (screenWidth / baseWidth);
    }
  }

  // Light Mode Text Theme
  static TextTheme lightTextTheme(BuildContext context) {
    return TextTheme(
      headlineLarge: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.bold,
        fontSize: getResponsiveFontSize(context, 32), // Adjusted size
      ),
      headlineMedium: TextStyle(
        color: AppColors.primary,
        fontWeight: FontWeight.bold,
        fontSize: getResponsiveFontSize(context, 24),
      ),
      headlineSmall: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.w600,
        fontSize: getResponsiveFontSize(context, 18),
      ),
      titleLarge: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.bold,
        fontSize: getResponsiveFontSize(context, 16),
      ),
      titleMedium: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.bold,
        fontSize: getResponsiveFontSize(context, 14),
      ),
      titleSmall: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.bold,
        fontSize: getResponsiveFontSize(context, 10),
      ),
      bodyLarge: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.w500,
        fontSize: getResponsiveFontSize(context, 14),
      ),
      bodyMedium: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.normal,
        fontSize: getResponsiveFontSize(context, 14),
      ),
      bodySmall: TextStyle(
        color: AppColors.black.withOpacity(.5),
        fontWeight: FontWeight.w500,
        fontSize: getResponsiveFontSize(context, 14),
      ),
      labelLarge: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.normal,
        fontSize: getResponsiveFontSize(context, 12),
      ),
      labelMedium: TextStyle(
        color: AppColors.black.withOpacity(.5),
        fontWeight: FontWeight.normal,
        fontSize: getResponsiveFontSize(context, 10),
      ),
    );
  }

  // Dark Mode Text Theme
  static TextTheme darkTextTheme(BuildContext context) {
    return TextTheme(
      headlineLarge: TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.bold,
        fontSize: getResponsiveFontSize(context, 32),
      ),
      headlineMedium: TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.w600,
        fontSize: getResponsiveFontSize(context, 24),
      ),
      headlineSmall: TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.w600,
        fontSize: getResponsiveFontSize(context, 18),
      ),
      titleLarge: TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.bold,
        fontSize: getResponsiveFontSize(context, 16),
      ),
      titleMedium: TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.bold,
        fontSize: getResponsiveFontSize(context, 14),
      ),
      titleSmall: TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.bold,
        fontSize: getResponsiveFontSize(context, 10),
      ),
      bodyLarge: TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.w500,
        fontSize: getResponsiveFontSize(context, 14),
      ),
      bodyMedium: TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.normal,
        fontSize: getResponsiveFontSize(context, 14),
      ),
      bodySmall: TextStyle(
        color: AppColors.white.withOpacity(.5),
        fontWeight: FontWeight.w500,
        fontSize: getResponsiveFontSize(context, 14),
      ),
      labelLarge: TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.normal,
        fontSize: getResponsiveFontSize(context, 12),
      ),
      labelMedium: TextStyle(
        color: AppColors.white.withOpacity(.5),
        fontWeight: FontWeight.normal,
        fontSize: getResponsiveFontSize(context, 10),
      ),
    );
  }
}
