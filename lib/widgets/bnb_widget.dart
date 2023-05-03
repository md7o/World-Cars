// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:world_car/screens/home_screen.dart';
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
  int selectedIndex = 0;

  void navigatedBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> pages = [
    const Home(),
    const BestSelling(),
    const Setting(),
  ];

  // @override
  // void initState() {
  //   super.initState();

  //   WidgetsBinding.instance.addPostFrameCallback(
  //     (Duration _) {
  //       showDialog(
  //         context: context,
  //         builder: (context) => AlertDialog(
  //           content: SizedBox(
  //             height: MediaQuery.of(context).size.height * 0.3,
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Padding(
  //                   padding: const EdgeInsets.only(bottom: 30),
  //                   child: Container(
  //                     decoration: const BoxDecoration(
  //                         borderRadius: BorderRadius.all(
  //                           Radius.circular(100),
  //                         ),
  //                         color: Color(0xFF3F2E73)),
  //                     height: 75,
  //                     width: 75,
  //                     child: const Icon(
  //                       Icons.priority_high,
  //                       color: Colors.white,
  //                       size: 60,
  //                     ),
  //                   ),
  //                 ),
  //                 Text(
  //                   'The app is under development and we will always update',
  //                   style: GoogleFonts.cairo(
  //                     textStyle: const TextStyle(
  //                         color: Colors.white,
  //                         fontSize: 20,
  //                         fontWeight: FontWeight.bold),
  //                   ),
  //                   textAlign: TextAlign.center,
  //                 ),
  //               ],
  //             ),
  //           ),
  //           backgroundColor: Color(0xFF5E46A7),
  //           shape: const RoundedRectangleBorder(
  //             borderRadius: BorderRadius.all(
  //               Radius.circular(20),
  //             ),
  //           ),
  //           actions: [
  //             Center(
  //               child: ElevatedButton(
  //                 onPressed: () => Navigator.pop(context),
  //                 style: ButtonStyle(
  //                   backgroundColor: MaterialStateProperty.all<Color>(
  //                     const Color(0xFF3F2E73),
  //                   ),
  //                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
  //                     RoundedRectangleBorder(
  //                       borderRadius: BorderRadius.circular(15.0),
  //                     ),
  //                   ),
  //                 ),
  //                 child: Text(
  //                   'Accept',
  //                   style: GoogleFonts.cairo(
  //                     textStyle: const TextStyle(
  //                         color: Colors.white,
  //                         fontSize: 25,
  //                         fontWeight: FontWeight.bold),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }

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
        animationDuration: const Duration(milliseconds: 900),
        onTap: navigatedBottomBar,
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
