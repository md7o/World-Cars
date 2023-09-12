import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:device_preview/device_preview.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:world_car/models/themedata.dart';
import 'package:world_car/provider/theme_provider.dart';
import 'package:world_car/screens/search.dart';
import 'package:world_car/screens/tabs.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) =>
          ProviderScope(child: const MyApp()), // Wrap your app
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final appThemeState = ref.watch(appThemeStateNotifer);
    var darkMode = ref.watch(darkModeProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: AppTheme.darkTheme,
      theme: AppTheme.lightTheme,
      // theme: AppTheme.darkTheme,
      themeMode: darkMode ? ThemeMode.light : ThemeMode.dark,
      home: TabsScreen(),
    );
  }
}
