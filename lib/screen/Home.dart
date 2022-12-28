// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_car/data.dart';
import 'package:world_car/models/world_car.dart';
import 'package:world_car/screen/CountryCar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF11101C),

      // Body

      body: Column(
        children: [
          // AppBar

          Container(
              height: 175.0,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(0xFF1A2037),
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(200, 100))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Image.asset(
                      "images/earth.png",
                      width: 80,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Car World',
                    style: GoogleFonts.josefinSans(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    ),
                  )
                ],
              )),

          // AppBar

          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35, bottom: 15),
                child: Text(
                  'Car Country',
                  style: GoogleFonts.josefinSans(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ],
          ),

          // country
          for (final category in data)
            Stack(
              children: [
                // ignore: unused_local_variable
                for (WorldCar item in (category.items))
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () => Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return CountryCar(
                              item: category.items,
                              label: category.label,
                              img: category.img,
                              transitionAnimation: animation,
                            );
                          },
                          transitionDuration: const Duration(seconds: 1),
                          // transitionsBuilder:
                          //     (context, animation, animationTime, child) {
                          //   animation = CurvedAnimation(
                          //       parent: animation, curve: Curves.ease);
                          //   return ScaleTransition(
                          //       scale: animation, child: child);
                          // }
                        ),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            child: Container(
                              margin: const EdgeInsets.only(top: 10.5),
                              width: 200,
                              height: 54,
                              decoration: const BoxDecoration(
                                color: Color(0xFF1A2037),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                              child: Align(
                                alignment: const Alignment(0.3, 0),
                                child: Text(
                                  category.label,
                                  style: GoogleFonts.josefinSans(
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const Alignment(-0.45, 0),
                            child: Image.asset(
                              category.img,
                              width: 76,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
        ],
      ),

      // bottomNavigationBar: const naviBar(),
    );
  }
}
