// ignore_for_file: file_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_car/models/world_car.dart';

class BestSelling extends StatelessWidget {
  const BestSelling({super.key});

  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'darkTheme'
        : 'LightTheme';
    final List<PopularsCar> popular = [
      const PopularsCar(
        title: '1- Toyota Corolla',
        backgroundImg: "images/Corolla.png",
        selling: '1.1M 👤',
      ),
      const PopularsCar(
        title: '2- Toyota RAV4',
        backgroundImg: "images/RAV4.png",
        selling: '1M 👤',
      ),
      const PopularsCar(
        title: '3- Ford F-Series',
        backgroundImg: "images/Ford_F.png",
        selling: '860K 👤',
      ),
      const PopularsCar(
        title: '4- Honda CR-V',
        backgroundImg: "images/CRV.png",
        selling: '730K 👤',
      ),
      const PopularsCar(
        title: '5- Toyota Camry',
        backgroundImg: "images/Camry.png",
        selling: '690K 👤',
      ),
      const PopularsCar(
        title: '6- Ram Pick-up',
        backgroundImg: "images/Ram.png",
        selling: '650K 👤',
      ),
      const PopularsCar(
        title: '7- Toyota Yaris',
        backgroundImg: "images/Yaris.png",
        selling: '590K 👤',
      ),
      const PopularsCar(
        title: '8- Honda Civic',
        backgroundImg: "images/Civic.png",
        selling: '590K 👤',
      ),
      const PopularsCar(
        title: '9- Chevrolet Silverado',
        backgroundImg: "images/Silverado.png",
        selling: '580K 👤',
      ),
      const PopularsCar(
        title: '10- Tesla Model 3',
        backgroundImg: "images/Tesla.png",
        selling: '580K 👤',
      ),
    ];

    return Scrollbar(
      thickness: 3,
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: const Color(0xFF2C2348),
            pinned: false,
            shape: const ContinuousRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(80),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Text(
                  "Best selling cars worldwide",
                  style: GoogleFonts.josefinSans(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
            expandedHeight: 90,
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100 * 25.5,
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                        physics: const BouncingScrollPhysics(),
                        children: popular.map(
                          (po) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  right: 20, left: 20, bottom: 40),
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        po.backgroundImg,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 200,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                      gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                          Colors.black.withOpacity(0.7),
                                          Colors.transparent
                                        ],
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 10,
                                              horizontal: 10,
                                            ),
                                            child: Text(
                                              po.title,
                                              style: GoogleFonts.comfortaa(
                                                textStyle: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                width: 180,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      (const BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(30),
                                                    topRight:
                                                        Radius.circular(30),
                                                    topLeft:
                                                        Radius.circular(10),
                                                  )),
                                                  color: Colors.green.shade500,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10),
                                                child: Text(
                                                  po.selling,
                                                  style: GoogleFonts.comfortaa(
                                                    textStyle: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ).toList()),
                  ),

                  // country
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
