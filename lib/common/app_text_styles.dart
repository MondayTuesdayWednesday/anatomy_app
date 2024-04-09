import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  static const fontFamily = "Nunito Sans";

  static TextStyle weightFour({
    required BuildContext context,
    Color? color,
    double fontSize = 14,
    double letterSpacing = 0.31,
    FontWeight fontWeight = FontWeight.w400,
    double? height = 0.69,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      color: AppColors.whiteTextColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      height: height,
    );
  }

  static TextStyle weightFive({
    required BuildContext context,
    double? letterSpacing = 0.31,
    double? fontSize = 14,
    FontWeight fontWeight = FontWeight.w500,
    Color? color,
    double? height = 0.69,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      color: AppColors.whiteTextColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      height: height,
    );
  }

  static TextStyle weightSix({
    required BuildContext context,
    double? letterSpacing = 0.31,
    double? fontSize = 14,
    FontWeight fontWeight = FontWeight.w600,
    Color? color,
    double? height = 0.69,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      color: AppColors.whiteTextColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      height: height,
    );
  }

  static TextStyle weightSeven({
    required BuildContext context,
    double? letterSpacing = 0.31,
    double? fontSize = 14,
    FontWeight fontWeight = FontWeight.w700,
    Color? color,
    double? height = 0.69,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      height: height,
    );
  }

  static TextStyle weightEight({
    required BuildContext context,
    double? letterSpacing = 0.31,
    double? fontSize = 14,
    FontWeight fontWeight = FontWeight.w800,
    double? height = 0.69,
    Color? color,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      color: AppColors.whiteTextColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      height: height,
    );
  }
}
