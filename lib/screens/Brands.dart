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
    required this.CountryId,
    required this.carItem,
    required this.transitionAnimation,
  });
  final List<WorldCar> item;
  final List<Cars> carItem;
  final String label;
  final String CountryId;
  final Animation<double> transitionAnimation;
  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'darkTheme'
        : 'LightTheme';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 35,
        leading: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
            child: ScaleTransition(
              scale: Tween<double>(begin: 0.5, end: 1).animate(
                CurvedAnimation(
                  parent: transitionAnimation,
                  curve: Curves.easeOutCubic,
                ),
              ),
              child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF2C2348),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.purple.shade200,
                    size: 18,
                  )),
            ),
          ),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width / 4,
              ),
              AnimatedBuilder(
                animation: transitionAnimation,
                builder: (context, child) {
                  return SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(-1, 0),
                      end: const Offset(0, 0),
                    ).animate(CurvedAnimation(
                      curve: const Interval(0, 0.7, curve: Curves.easeOutCubic),
                      parent: transitionAnimation,
                    )),
                    child: child,
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Image.asset(
                        CountryId,
                        width: 45,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        label,
                        style: GoogleFonts.comfortaa(
                          color: Colors.white,
                          textStyle: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ScaleTransition(
                scale: Tween<double>(begin: 0.5, end: 1).animate(
                  CurvedAnimation(
                    parent: transitionAnimation,
                    curve: Curves.easeOutCubic,
                  ),
                ),
                child: SizedBox(
                  height: 160,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () => Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) {
                              return brand_cars(
                                item: item[index],
                                carItem: item[index].carItems,
                                detail: carItem[index].details,
                                transitionAnimation: animation,
                              );
                            },
                            transitionDuration:
                                const Duration(milliseconds: 1300),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            width: 150,
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        item[index].imageUrl,
                                        width: 45,
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(3),
                                            child: Text(
                                              'Top',
                                              style: GoogleFonts.comfortaa(
                                                textStyle: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          const Icon(
                                            Icons.workspace_premium,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Text(
                                        item[index].name,
                                        style: GoogleFonts.comfortaa(
                                          textStyle: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Text(
                                        item[index].name,
                                        style: GoogleFonts.comfortaa(
                                          textStyle: const TextStyle(
                                              color: Colors.white38,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              AnimatedBuilder(
                animation: transitionAnimation,
                builder: (context, child) {
                  return SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(-0.5, 0),
                      end: const Offset(0, 0),
                    ).animate(CurvedAnimation(
                      curve: const Interval(0, 0.7, curve: Curves.easeOutCubic),
                      parent: transitionAnimation,
                    )),
                    child: child,
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.tips_and_updates_outlined,
                        size: 50,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Facts",
                        style: GoogleFonts.comfortaa(
                          color: Colors.white,
                          textStyle: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
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
                        curve:
                            const Interval(0, 0.6, curve: Curves.easeOutCubic),
                        parent: transitionAnimation,
                      ),
                    ),
                    child: child,
                  );
                },
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: MediaQuery.of(context).size.width * 0.3,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
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
                                child: Text(
                                  item[4].name,
                                  style: GoogleFonts.comfortaa(
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: AnimatedBuilder(
                      animation: transitionAnimation,
                      builder: (context, child) {
                        return SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(-1, 0),
                            end: const Offset(0, 0),
                          ).animate(
                            CurvedAnimation(
                              curve: const Interval(0.4, 1,
                                  curve: Curves.easeOutCubic),
                              parent: transitionAnimation,
                            ),
                          ),
                          child: child,
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: MediaQuery.of(context).size.width * 0.3,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Text(
                                    item[5].name,
                                    style: GoogleFonts.comfortaa(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
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
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
