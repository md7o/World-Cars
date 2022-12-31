import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF11101C),
    colorScheme: const ColorScheme.dark(),
    primaryColor: const Color(0xFF1A2037),
    iconTheme: const IconThemeData(color: Colors.white),
  );
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFC9D4FF),
    colorScheme: const ColorScheme.light(),
    primaryColor: const Color(0xFF8097F1),
    iconTheme: const IconThemeData(color: Color(0xFF1A2037)),
  );
}
