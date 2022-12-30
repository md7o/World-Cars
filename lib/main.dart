import 'package:flutter/material.dart';
import 'package:world_car/NavigationBar.dart';
import 'package:world_car/models/themedata.dart';
import 'package:world_car/push_pages/darkMode.dart';
import 'package:world_car/screen/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: MyThemes.lightTheme,
        darkTheme: MyThemes.darkTheme,
        home: naviBar(),
      );
}
