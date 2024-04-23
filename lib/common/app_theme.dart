import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_colors.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
      surfaceTintColor: AppColors.yellowColor,
      foregroundColor: AppColors.bgThemeColor,
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
      titleMedium: TextStyle(color: AppColors.whiteTextColor),
      titleSmall: TextStyle(color: AppColors.whiteTextColor.withOpacity(0.5)),
      titleLarge: TextStyle(color:  AppColors.whiteTextColor
          .withOpacity(0.5)),
    ),
    scaffoldBackgroundColor: AppColors.lightBgColor,
    colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.yellowColor, background: AppColors.whiteTextColor),
    iconTheme: const IconThemeData(color: AppColors.yellowColor),
    cardTheme: CardTheme(color: AppColors.yellowColor),
  );
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(
      surfaceTintColor: AppColors.whiteTextColor,
      foregroundColor: AppColors.btnGreyColor,
      backgroundColor: AppColors.themeColor,
      shadowColor: Color(0xFFEFECE2),
      systemOverlayStyle: SystemUiOverlayStyle.light,
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 18,
          color: AppColors.whiteTextColor),
      iconTheme: const IconThemeData(color: AppColors.circleContainerColor),
    ),
    colorScheme: ColorScheme.fromSeed(

        seedColor: AppColors.borderHintColor, background: AppColors.borderHintColor),
    primaryTextTheme: TextTheme(
      titleMedium: TextStyle(color: AppColors.bgThemeColor),
      titleSmall: TextStyle(color: AppColors.whiteTextColor.withOpacity(0.2)),
      titleLarge: TextStyle(color:  AppColors.containerGradientColor
          .withOpacity(0.2)),
    ),
    scaffoldBackgroundColor: AppColors.bgThemeColor,
    iconTheme: const IconThemeData(color: AppColors.whiteTextColor),
    cardTheme: CardTheme(color: AppColors.blackTextColor),
  );
}
