import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_colors.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
      foregroundColor: AppColors.whiteTextColor,
      backgroundColor: AppColors.bgThemeColor,
      shadowColor: Color(0xFFEFECE2),
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 18,
          color: AppColors.bgThemeColor),
      iconTheme: const IconThemeData(color: AppColors.bgThemeColor),
    ),
    primaryTextTheme: TextTheme(
      titleMedium: TextStyle(color: AppColors.bgThemeColor),
    ),
    scaffoldBackgroundColor: AppColors.bgThemeColor,
    colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.yellowColor, background: AppColors.yellowColor),
    iconTheme: const IconThemeData(color: AppColors.yellowColor),
    cardTheme: CardTheme(color: AppColors.yellowColor),
  );
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(
      foregroundColor: Colors.deepOrange,
      backgroundColor: Colors.grey,
      shadowColor: Color(0xFFEFECE2),
      systemOverlayStyle: SystemUiOverlayStyle.light,
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 18,
          color: AppColors.whiteTextColor),
      iconTheme: const IconThemeData(color: AppColors.whiteTextColor),
    ),
    colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.bgThemeColor, background: Colors.grey),
    primaryTextTheme: TextTheme(
      titleMedium: TextStyle(color: AppColors.whiteTextColor),
    ),
    scaffoldBackgroundColor: Colors.grey,
    iconTheme: const IconThemeData(color: AppColors.whiteTextColor),
    cardTheme: CardTheme(color: AppColors.blackTextColor),
  );
}
