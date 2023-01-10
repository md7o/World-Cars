// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:world_car/screens/Home.dart';
import 'package:world_car/screens/famousCar.dart';
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
  int selectedIndex = 0;

  void navigatedBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> pages = [
    const Home(),
    const FamousCar(),
    const Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'darkTheme'
        : 'LightTheme';
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Theme.of(context).primaryColor,
        height: 60,
        animationDuration: const Duration(milliseconds: 800),
        onTap: navigatedBottomBar,
        items: const [
          Icon(
            Icons.home,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.star,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
            size: 30,
          ),
        ],
        // child: Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
        //   child: GNav(
        //     iconSize: 28,
        //     duration: const Duration(milliseconds: 500),
        //     tabBorderRadius: 10,
        //     backgroundColor: Theme.of(context).primaryColor,
        //     color: Colors.white,
        //     activeColor: Colors.white,
        //     tabBackgroundColor: Theme.of(context).scaffoldBackgroundColor,
        //     gap: 8,
        //     onTabChange: navigatedBottomBar,
        //     padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
        //     tabs: const [
        //       GButton(
        //         icon: Icons.home,
        //         text: 'Home',
        //       ),
        //       GButton(
        //         icon: Icons.star,
        //         text: 'Famous',
        //       ),
        //       GButton(
        //         icon: Icons.settings,
        //         text: 'Setting',
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}

// debugShowCheckedModeBanner: false,
//       home: Home(),