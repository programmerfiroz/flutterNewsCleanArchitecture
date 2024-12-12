import 'package:flutter/material.dart';
import 'package:newsapp/core/constants/colors.dart';
import 'package:newsapp/core/constants/size.dart';

class AppIconTheme {
  AppIconTheme._();

  static IconThemeData lightIconTheme = const IconThemeData(
    color: AppColors.primary, // Change this to the desired color
    size: 24.0, // Change this to the desired size
  );

  static IconThemeData darkIconTheme = const IconThemeData(
    color: AppColors.secondary,
    // Change this to the desired dark mode color
    size: Sizes.iconLg, // Change this to the desired dark mode size
  );
}
