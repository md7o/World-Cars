// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:world_car/screens/home_categories.dart';
import 'package:world_car/screens/best_selling.dart';
import 'package:world_car/screens/setting.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// ignore: camel_case_types
class naviBar extends StatefulWidget {
  const naviBar({super.key});

  @override
  State<naviBar> createState() => _naviBarState();
}

// ignore: camel_case_types
class _naviBarState extends State<naviBar> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  final List<Widget> activePage = [
    // const HomeScreen(
    //   avalibaleMeals: [],
    // ),
    const BestSelling(),
    const Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'darkTheme'
        : 'LightTheme';
    return Scaffold(
      body: activePage[_selectedPageIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Theme.of(context).primaryColor,
        height: 60,
        animationDuration: const Duration(milliseconds: 900),
        onTap: _selectPage,
        items: const [
          Icon(
            Icons.home_outlined,
            color: Colors.white,
            size: 35,
          ),
          Icon(
            Icons.favorite_rounded,
            color: Colors.white,
            size: 35,
          ),
          Icon(
            Icons.settings_outlined,
            color: Colors.white,
            size: 35,
          ),
        ],
      ),
    );
  }
}
