// ignore_for_file: file_names, unused_local_variable, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_car/data.dart';
import 'package:world_car/models/world_car.dart';
import 'package:world_car/screens/brands_page.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final imageUrl =
      "https://thumbs.gfycat.com/AdmirableRapidAdmiralbutterfly-size_restricted.gif";

  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'darkTheme'
        : 'LightTheme';
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: CachedNetworkImageProvider(
                    "https://cutewallpaper.org/cdn-cgi/mirage/dd19f2d06ebc24f541f142b37b4289ffa7de722a7607e39984c5c6dd4ce8defd/1280/21/galaxy-background-gif/About-Massive-Galaxy-Online-Space-Trading-Adventure-Game.gif",
                  ),
                  fit: BoxFit.cover),
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.elliptical(70, 50),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Image.asset(
                    "images/Logo.png",
                    width: 140,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Scrollbar(
              thickness: 3,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  for (final category in data)
                    for (WorldCar item in (category.items.length > 1
                        ? category.items.sublist(0, 1)
                        : category.items))
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () => Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) {
                              return Brands(
                                item: category.items,
                                carItem: item.carItems,
                                label: category.label,
                                CountryId: category.CountryId,
                                transitionAnimation: animation,
                              );
                            },
                            transitionDuration:
                                const Duration(milliseconds: 1300),
                            // transitionsBuilder:
                            //     (context, animation, animationTime, child) {
                            //   animation = CurvedAnimation(
                            //       parent: animation, curve: Curves.ease);
                            //   return ScaleTransition(
                            //       scale: animation, child: child);
                            // }
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 40, left: 40, bottom: 20),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    category.img,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                height: 150,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
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
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 20,
                                      ),
                                      child: Text(
                                        category.label,
                                        style: GoogleFonts.josefinSans(
                                          textStyle: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
