import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_car/models/world_car.dart';
import 'package:world_car/screens/car_details.dart';

class car_types extends StatelessWidget {
  const car_types({
    super.key,
    required this.item,
    required this.carItem,
    required this.transitionAnimation,
  });
  final WorldCar item;
  final List<Cars> carItem;
  final Animation<double> transitionAnimation;
  @override
  Widget build(BuildContext context) {
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
          AnimatedBuilder(
            animation: transitionAnimation,
            builder: (context, child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0, -1),
                  end: const Offset(0, 0),
                ).animate(
                  CurvedAnimation(
                    curve: const Interval(0, 1, curve: Curves.easeOutCubic),
                    parent: transitionAnimation,
                  ),
                ),
                child: child,
              );
            },
            child: Container(
              child: Column(
                children: [
                  Image.asset(
                    item.imageUrl,
                    width: 45,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    item.name,
                    style: GoogleFonts.josefinSans(
                      color: Colors.white,
                      textStyle: const TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Scrollbar(
                thickness: 3,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: carItem.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 30),
                      child: AnimatedBuilder(
                        animation: transitionAnimation,
                        builder: (context, child) {
                          return SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(0, 1),
                              end: const Offset(0, 0),
                            ).animate(
                              CurvedAnimation(
                                curve: const Interval(0, 1,
                                    curve: Curves.easeOutCubic),
                                parent: transitionAnimation,
                              ),
                            ),
                            child: child,
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                blurRadius: 20,
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: CachedNetworkImage(
                                    imageUrl: carItem[index].carImage,
                                    placeholder: (context, url) => Center(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 40),
                                        child: Container(
                                          color: Colors.transparent,
                                          height: 50,
                                          width: 50,
                                          child:
                                              const CircularProgressIndicator(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                    imageBuilder: ((context, imageProvider) {
                                      return Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: imageProvider,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () => Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                        secondaryAnimation) {
                                      return CarDetails(
                                        detail: carItem[index].details,
                                        imageSlides: carItem[index].imageSlide,
                                        carItem: carItem[index],
                                        transitionAnimation: animation,
                                      );
                                    },
                                    transitionDuration:
                                        const Duration(milliseconds: 1300),
                                  ),
                                ),
                                child: Container(
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
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 30, horizontal: 10),
                                        child: Text(
                                          carItem[index].carName,
                                          style: GoogleFonts.josefinSans(
                                            textStyle: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          textAlign: TextAlign.left,
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
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
