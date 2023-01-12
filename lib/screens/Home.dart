// ignore_for_file: file_names, unused_local_variable, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_car/data.dart';
import 'package:world_car/models/world_car.dart';
import 'package:world_car/screens/Brands.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Image appLogo = const Image(
      image: ExactAssetImage("images/earth.png"),
      width: 175,
      height: 100,
      alignment: FractionalOffset.center);

  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'darkTheme'
        : 'LightTheme';
    return Scaffold(
      // Body

      body: Column(
        children: [
          // AppBar

          Container(
            height: 175.0,
            width: double.infinity,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: NetworkImage(
                  'https://gifimage.net/wp-content/uploads/2018/04/pixel-space-gif-1.gif',
                ),
                fit: BoxFit.cover,
              ),
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.elliptical(200, 100),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://openseauserdata.com/files/cdcfaa7304a662705be493464763cd63.gif",
                    width: 80,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Car World',
                  style: GoogleFonts.comfortaa(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),

          // const SizedBox(
          //   height: 30,
          // ),

          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                // ignore: unused_local_variable
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
                              img: category.img,
                              transitionAnimation: animation,
                            );
                          },
                          transitionDuration: const Duration(milliseconds: 800),
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
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  category.img,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              height: 200,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
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
        ],
      ),

      // bottomNavigationBar: const naviBar(),
    );
  }
}
