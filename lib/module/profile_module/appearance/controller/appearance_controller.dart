import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


class AppearanceController extends GetxController {
  final RxInt selectedRadio = 1.obs;
  final selectedTheme = ThemeModeOptions.light.obs;
  RxBool isDarkMode = false.obs;

  @override
  void onInit() {
    super.onInit();
    _loadThemeFromPrefs();
  }

  void setSelectedRadio(int val) {
    selectedRadio.value = val;
  }

  void changeTheme(ThemeModeOptions selectedOption) {
    selectedTheme.value = selectedOption;
    isDarkMode.value = selectedOption == ThemeModeOptions.dark;
    Get.changeThemeMode(getThemeMode(selectedOption));
    _saveThemeToPrefs(selectedOption);
    print('Theme changed to: ${getThemeText(selectedOption)}');
  }

  ThemeMode getThemeMode(ThemeModeOptions option) {
    switch (option) {
      case ThemeModeOptions.light:
        return ThemeMode.light;
      case ThemeModeOptions.dark:
        return ThemeMode.dark;
      case ThemeModeOptions.systemDefault:
        return ThemeMode.system;
    }
  }
  String getThemeText(ThemeModeOptions option) {
    switch (option) {
      case ThemeModeOptions.light:
        return 'Light';
      case ThemeModeOptions.dark:
        return 'Dark';
      case ThemeModeOptions.systemDefault:
        return 'System Default';
    }
  }
  Future<void> _saveThemeToPrefs(ThemeModeOptions selectedOption) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme', selectedOption.toString());
  }
  Future<void> _loadThemeFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    final savedTheme = prefs.getString('theme');
    if (savedTheme != null) {
      final ThemeModeOptions selectedOption =
          ThemeModeOptions.values.firstWhere(
        (e) => e.toString() == savedTheme,
        orElse: () => ThemeModeOptions.light,
      );
      selectedTheme.value = selectedOption;
      isDarkMode.value = selectedOption == ThemeModeOptions.dark;
      Get.changeThemeMode(getThemeMode(selectedOption));
    }
  }
}
enum ThemeModeOptions { light, dark, systemDefault }
