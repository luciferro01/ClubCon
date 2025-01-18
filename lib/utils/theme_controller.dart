import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  static const String isDarkModeKey = 'isDarkMode';
  final RxBool isDarkMode = false.obs;

  @override
  void onInit() {
    super.onInit();
    _loadThemeFromPrefs();
  }

  ThemeMode get theme => isDarkMode.value ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme(bool value) {
    isDarkMode.value = value;
    Get.changeThemeMode(theme);
    _saveThemeToPrefs(value);
  }

  Future<void> _loadThemeFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    isDarkMode.value = prefs.getBool(isDarkModeKey) ?? false;
    Get.changeThemeMode(theme);
  }

  Future<void> _saveThemeToPrefs(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(isDarkModeKey, value);
  }
}
