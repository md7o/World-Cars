// ignore_for_file: file_names, unused_local_variable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_car/models/world_car.dart';
import 'package:world_car/screens/car_types.dart';

class Brands extends StatelessWidget {
  const Brands({
    super.key,
    required this.item,
    required this.label,
    // ignore: non_constant_identifier_names
    required this.CountryId,
    required this.carItem,
    required this.transitionAnimation,
  });
  final List<WorldCar> item;
  final List<Cars> carItem;
  final String label;
  // ignore: non_constant_identifier_names
  final String CountryId;
  final Animation<double> transitionAnimation;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'darkTheme'
        : 'LightTheme';
    return Scaffold(
      body: Column(
        children: [
          ScaleTransition(
            scale: Tween<double>(begin: 0, end: 1).animate(
              CurvedAnimation(
                parent: transitionAnimation,
                curve: Curves.easeOutCubic,
              ),
            ),
            child: Row(
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 35, left: 25),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Scrollbar(
                thickness: 4,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.width / 6.5,
                        ),
                        AnimatedBuilder(
                          animation: transitionAnimation,
                          builder: (context, child) {
                            return SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(-1, 0),
                                end: const Offset(0, 0),
                              ).animate(
                                CurvedAnimation(
                                  curve: const Interval(0, 0.7,
                                      curve: Curves.easeOutCubic),
                                  parent: transitionAnimation,
                                ),
                              ),
                              child: child,
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                CachedNetworkImage(
                                  imageUrl: CountryId,
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
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Scrollbar(
                                thickness: 2,
                                child: ListView.builder(
                                  physics: const BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: carItem.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () => Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                          pageBuilder: (context, animation,
                                              secondaryAnimation) {
                                            return car_types(
                                              item: item[index],
                                              carItem: item[index].carItems,
                                              transitionAnimation: animation,
                                            );
                                          },
                                          transitionDuration: const Duration(
                                              milliseconds: 1300),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Container(
                                          width: 150,
                                          decoration: BoxDecoration(
                                            color:
                                                Theme.of(context).primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 5),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    horizontal: 15,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Image.asset(
                                                        item[index].imageUrl,
                                                        width: 45,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(3),
                                                            child: Text(
                                                              'Top',
                                                              style: GoogleFonts
                                                                  .comfortaa(
                                                                textStyle: const TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        13,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ),
                                                          ),
                                                          const Icon(
                                                            Icons
                                                                .workspace_premium,
                                                            size: 20,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        horizontal: 15,
                                                      ),
                                                      child: Text(
                                                        item[index].name,
                                                        style: GoogleFonts
                                                            .comfortaa(
                                                          textStyle:
                                                              const TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
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
                              ).animate(
                                CurvedAnimation(
                                  curve: const Interval(0, 0.7,
                                      curve: Curves.easeOutCubic),
                                  parent: transitionAnimation,
                                ),
                              ),
                              child: child,
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 20, bottom: 20),
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
                                  curve: const Interval(0, 0.6,
                                      curve: Curves.easeOutCubic),
                                  parent: transitionAnimation,
                                ),
                              ),
                              child: child,
                            );
                          },
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.width * 0.3,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                    ),
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
                                              textStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: width / 25,
                                                fontWeight: FontWeight.bold,
                                              ),
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.width * 0.3,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              item[5].name,
                                              style: GoogleFonts.comfortaa(
                                                textStyle: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: width / 28,
                                                    fontWeight:
                                                        FontWeight.bold),
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
