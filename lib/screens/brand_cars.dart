import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_car/models/world_car.dart';
import 'package:world_car/screens/details.dart';

class brand_cars extends StatelessWidget {
  const brand_cars({
    super.key,
    required this.item,
    required this.carItem,
    required this.detail,
    required this.transitionAnimation,
  });

  final WorldCar item;
  final List<Cars> carItem;
  final List<Details> detail;
  final Animation<double> transitionAnimation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
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
              scale: Tween<double>(begin: 0, end: 1).animate(
                CurvedAnimation(
                  parent: transitionAnimation,
                  curve: Curves.easeOutCubic,
                ),
              ),
              child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
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
      body: Column(
        children: [
          //  ==============================================================

          AnimatedBuilder(
            animation: transitionAnimation,
            builder: (context, child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0, -1),
                  end: const Offset(0, 0),
                ).animate(CurvedAnimation(
                  curve: const Interval(0, 1, curve: Curves.easeOutCubic),
                  parent: transitionAnimation,
                )),
                child: child,
              );
            },
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
                        fontSize: 35, fontWeight: FontWeight.normal),
                  ),
                )
              ],
            ),
          ),

          const SizedBox(
            height: 10,
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
                          vertical: 10, horizontal: 25),
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
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: CachedNetworkImage(
                                  imageUrl: carItem[index].carImage,
                                  fit: BoxFit.cover,
                                  width: 80,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation, secondaryAnimation) {
                                    return Details_car(
                                      detail: carItem[index].details,
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
