import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:world_car/screen/Home.dart';
import 'package:world_car/screen/famousCar.dart';
import 'package:world_car/screen/setting.dart';

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
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: Container(
        color: const Color(0xFF1A2037),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
          child: GNav(
            iconSize: 28,
            duration: const Duration(milliseconds: 500),
            tabBorderRadius: 10,
            backgroundColor: const Color(0xFF1A2037),
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: const Color(0xFF11101C),
            gap: 8,
            onTabChange: navigatedBottomBar,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.star,
                text: 'Famous',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Setting',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// debugShowCheckedModeBanner: false,
//       home: Home(),