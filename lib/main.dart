import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:device_preview/device_preview.dart';
import 'package:world_car/screens/home_categories.dart';
import 'package:world_car/screens/tabs.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) =>
            ProviderScope(child: const MyApp()), // Wrap your app
      ),
    );

final theme = ThemeData(
  useMaterial3: true,
  primaryColor: Color.fromARGB(255, 44, 54, 88),
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: Color(0xFF253166),
  ),
  fontFamily: GoogleFonts.cairo().fontFamily,
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: Colors.white),
  ),
);

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        home: TabsScreen(),
      );
}
