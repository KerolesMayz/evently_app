import 'package:flutter/material.dart';

class ConfigProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  Locale language = const Locale('en');

  bool get isDark => currentTheme == ThemeMode.dark;

  bool get isEnglish => language == const Locale('en');

  void changeAppTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  void changeAppLanguage(Locale newLanguage) {
    if (language == newLanguage) return;
    language = newLanguage;
    notifyListeners();
  }
}
