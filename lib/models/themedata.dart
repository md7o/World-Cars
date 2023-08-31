import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final darkTheme = ThemeData(
    useMaterial3: true,
    shadowColor: Color(0xFF024659),
    colorScheme: ColorScheme.fromSeed(
      primary: Color(0xFF087165),
      secondary: Color(0xFF1E4179),
      brightness: Brightness.dark,
      seedColor: Color(0xFF181F26),
      background: Color(0xFF012B37),
      onBackground: Color(0xFF001B2B),
      tertiary: Color(0xFF00050E),
    ),
    fontFamily: GoogleFonts.cairo().fontFamily,
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: Colors.white),
    ),
  );

  static final lightTheme = ThemeData(
    useMaterial3: true,
    shadowColor: Color(0xFF024659),
    colorScheme: ColorScheme.fromSeed(
      primary: Color(0xFF0568A1),
      secondary: Color(0xFF3B8DB3),
      brightness: Brightness.dark,
      seedColor: Color(0xFF181F26),
      background: Color(0xFF102346),
      onBackground: Color(0xFF174E6F),
      tertiary: Color(0xFF3C859A),
    ),
    fontFamily: GoogleFonts.cairo().fontFamily,
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: Colors.white),
    ),
  );
}
