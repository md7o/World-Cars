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
    scaffoldBackgroundColor: const Color(0xFF18142F),
    colorScheme: const ColorScheme.dark(),
    primaryColor: const Color(0xFF2C2348),
    iconTheme: const IconThemeData(color: Colors.white),
  );
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFA494D0),
    colorScheme: const ColorScheme.light(),
    primaryColor: const Color(0xFF7C68B4),
    iconTheme: const IconThemeData(color: Colors.white),
  );
}
