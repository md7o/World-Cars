// ignore_for_file: file_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_car/models/world_car.dart';
import 'package:world_car/screens/brand_cars.dart';

class Brands extends StatelessWidget {
  const Brands({
    super.key,
    required this.item,
    required this.label,
    required this.img,
    required this.carItem,
    required this.transitionAnimation,
  });

  final List<WorldCar> item;
  final List<Cars> carItem;
  final String label;
  final String img;

  final Animation<double> transitionAnimation;

  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'darkTheme'
        : 'LightTheme';
    return Scaffold(
      body: Column(
        children: [
          // AppBar

          AnimatedBuilder(
            animation: transitionAnimation,
            builder: (context, child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0, -1),
                  end: const Offset(0, 0),
                ).animate(CurvedAnimation(
                  curve: const Interval(0, 0.7, curve: Curves.easeOutCubic),
                  parent: transitionAnimation,
                )),
                child: child,
              );
            },
            child: Container(
              height: 175.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.vertical(
                      bottom: Radius.elliptical(200, 100))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Image.asset(
                      img,
                      width: 80,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    label,
                    style: GoogleFonts.josefinSans(
                      color: Colors.white,
                      textStyle: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.normal),
                    ),
                  )
                ],
              ),
            ),
          ),

          // AppBar
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: ScaleTransition(
                scale: Tween<double>(begin: 0.5, end: 1).animate(
                  CurvedAnimation(
                    parent: transitionAnimation,
                    curve: Curves.easeOutCubic,
                  ),
                ),
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    crossAxisCount: 2,
                    mainAxisExtent: 95,
                  ),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => brand_cars(
                            item: item[index],
                            carItem: item[index].carItems,
                          ),
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              item[index].imageUrl,
                              width: 52,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                item[index].name,
                                style: GoogleFonts.josefinSans(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: ScaleTransition(
              scale: Tween<double>(begin: 0.5, end: 1).animate(CurvedAnimation(
                  parent: transitionAnimation, curve: Curves.easeOutCubic)),
              child: Text(
                'Facts',
                style: GoogleFonts.josefinSans(
                  color: Theme.of(context).iconTheme.color,
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.normal),
                ),
              ),
            ),
          ),
          AnimatedBuilder(
            animation: transitionAnimation,
            builder: (context, child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1, 0),
                  end: const Offset(0, 0),
                ).animate(
                  CurvedAnimation(
                    curve: const Interval(0, 0.6, curve: Curves.easeOutCubic),
                    parent: transitionAnimation,
                  ),
                ),
                child: child,
              );
            },
            child: Container(
              margin: const EdgeInsets.only(left: 55),
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.horizontal(
                  left: Radius.elliptical(50, 50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Image.asset(
                      item[1].imageUrl,
                      width: 58,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          item[4].name,
                          style: GoogleFonts.josefinSans(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: AnimatedBuilder(
              animation: transitionAnimation,
              builder: (context, child) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(-1, 0),
                    end: const Offset(0, 0),
                  ).animate(
                    CurvedAnimation(
                      curve: const Interval(0.4, 1, curve: Curves.easeOutCubic),
                      parent: transitionAnimation,
                    ),
                  ),
                  child: child,
                );
              },
              child: Container(
                margin: const EdgeInsets.only(right: 55),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.horizontal(
                    right: Radius.elliptical(50, 50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text(
                            item[5].name,
                            style: GoogleFonts.josefinSans(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ),
                      ),
                      Image.asset(
                        item[5].imageUrl,
                        width: 72,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
