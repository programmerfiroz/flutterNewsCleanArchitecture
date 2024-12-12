import 'package:flutter/material.dart';
import 'package:newsapp/core/constants/colors.dart';

class AppInputDecoration {
  AppInputDecoration._();

  // Method to calculate dynamic font size based on screen width
  static double getResponsiveFontSize(
      BuildContext context, double baseFontSize) {
    double screenWidth = MediaQuery.of(context).size.width;
    double baseWidth = 375.0; // Base width for scaling
    double maxWidth = 550.0; // Maximum width for scaling

    if (screenWidth > maxWidth) {
      return baseFontSize * (maxWidth / baseWidth);
    } else {
      return baseFontSize * (screenWidth / baseWidth);
    }
  }

  // Light Mode Input Decoration
  static InputDecoration getInputDecorationLight(
      BuildContext context, String label) {
    return InputDecoration(
      labelText: label,
      labelStyle: TextStyle(
        color: AppColors.primary,
        fontSize: getResponsiveFontSize(context, 14),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.primary),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.primary, width: 2),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.accent, width: 1),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
    );
  }

  // Dark Mode Input Decoration
  static InputDecoration getInputDecorationDark(
      BuildContext context, String label) {
    return InputDecoration(
      labelText: label,
      labelStyle: TextStyle(
        color: AppColors.white,
        fontSize: getResponsiveFontSize(context, 14),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.white),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.white, width: 2),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.grey, width: 1),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
    );
  }
}
