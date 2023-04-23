import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_car/data.dart';
import 'package:world_car/models/world_car.dart';
import 'package:world_car/screens/brands_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/Logo.png",
                  width: 140,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Scrollbar(
              thickness: 3,
              child: ListView(
                padding: const EdgeInsets.only(top: 0),
                physics: const BouncingScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text(
                          'Car countries',
                          style: GoogleFonts.comfortaa(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: GridView(
                      padding: const EdgeInsets.only(top: 0),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 1,
                        crossAxisSpacing: 1,
                        crossAxisCount: 2,
                        mainAxisExtent: 130,
                      ),
                      shrinkWrap: true,
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
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 3, horizontal: 3),
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
                                      height: 160,
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
                                            Colors.black.withOpacity(0.8),
                                            Colors.transparent
                                          ],
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 10,
                                            ),
                                            child: Text(
                                              category.label,
                                              style: GoogleFonts.comfortaa(
                                                textStyle: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
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
                  SizedBox(
                    height: 20,
                  ),

// ========================================================================

                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Container(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Car countries',
                              style: GoogleFonts.comfortaa(
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: GridView(
                          padding: const EdgeInsets.only(top: 0),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            crossAxisCount: 2,
                            mainAxisExtent: 65,
                          ),
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            //  CategoryBox =================== 1
                            Container(
                              width: 150,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text('Settings', style: myVariableStyle),
                                    Icon(Icons.settings_rounded, size: 35),
                                  ],
                                ),
                              ),
                            ),
                            //  CategoryBox =================== 2
                            Container(
                              width: 150,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text('Compared', style: myVariableStyle),
                                    Icon(Icons.compare_rounded, size: 35),
                                  ],
                                ),
                              ),
                            ),
                            //  CategoryBox =================== 3
                            Container(
                              width: 150,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text('Top Selling', style: myVariableStyle),
                                    Icon(Icons.moving_rounded, size: 35),
                                  ],
                                ),
                              ),
                            ),
                            //  CategoryBox =================== 4
                            Container(
                              width: 150,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text('Favorite', style: myVariableStyle),
                                    Icon(Icons.favorite_rounded, size: 35),
                                  ],
                                ),
                              ),
                            ),
                          ],
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
  }

  var myVariableStyle = GoogleFonts.comfortaa(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );
}
