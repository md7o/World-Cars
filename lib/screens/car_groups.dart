import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:world_car/models/category.dart';
import 'package:world_car/screens/car_details.dart';
import 'package:world_car/screens/compared.dart';

import '../models/car.dart';

class CarsGroups extends StatefulWidget {
  const CarsGroups({
    super.key,
    required this.cars,
    required this.categoryT,
    required this.transitionAnimation,
    // required this.assortment,
  });

  final Animation<double> transitionAnimation;
  final CategoryC categoryT;
  final Car cars;

  @override
  State<CarsGroups> createState() => _CarsGroupsState();
}

class _CarsGroupsState extends State<CarsGroups>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Column(
      children: [
        AnimatedBuilder(
          animation: widget.transitionAnimation,
          builder: (context, child) {
            return SlideTransition(
              position:
                  Tween<Offset>(begin: Offset(0, 1), end: Offset(0, 0)).animate(
                CurvedAnimation(
                  parent: _controller,
                  curve: Interval(
                    0,
                    1,
                    curve: Curves.ease,
                  ),
                ),
              ),
              child: child,
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeInImage(
                  placeholder: MemoryImage(kTransparentImage),
                  image: AssetImage(widget.cars.imgAssets),
                  fit: BoxFit.cover,
                  height: 35,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  widget.cars.title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Scrollbar(
            thickness: 3,
            child: AnimatedBuilder(
              animation: widget.transitionAnimation,
              builder: (context, child) {
                return SlideTransition(
                  position:
                      Tween<Offset>(begin: Offset(0, 1), end: Offset(0, 0))
                          .animate(
                    CurvedAnimation(
                      parent: _controller,
                      curve: Interval(
                        0.2,
                        1,
                        curve: Curves.ease,
                      ),
                    ),
                  ),
                  child: child,
                );
              },
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: widget.cars.assortment.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                          InkWell(
                            splashFactory: NoSplash.splashFactory,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              Navigator.of(context).push(
                                PageRouteBuilder(
                                  transitionDuration:
                                      Duration(milliseconds: 600),
                                  reverseTransitionDuration:
                                      Duration(milliseconds: 400),
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      CarDetails(
                                    assortment: widget.cars.assortment[index],
                                    details:
                                        widget.cars.assortment[index].details,
                                    transitionAnimation: animation,
                                  ),
                                  transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) {
                                    const begin = Offset(0, 1.0);
                                    const end = Offset.zero;
                                    const curve = Curves.ease;

                                    var tween =
                                        Tween(begin: begin, end: end).chain(
                                      CurveTween(curve: curve),
                                    );

                                    return SlideTransition(
                                      position: animation.drive(tween),
                                      child: child,
                                    );
                                  },
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 50),
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
                                        borderRadius: BorderRadius.circular(20),
                                        child: CachedNetworkImage(
                                          imageUrl: widget
                                              .cars.assortment[index].carImage,
                                          placeholder: (context, url) => Center(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 40),
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
                                          imageBuilder:
                                              ((context, imageProvider) {
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
                                    Container(
                                      height: 180,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 10),
                                            child: Text(
                                              widget.cars.assortment[index]
                                                  .carName,
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
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
                          ),
                        ]),
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.background,
            Theme.of(context).colorScheme.onBackground,
            Theme.of(context).colorScheme.tertiary,
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          surfaceTintColor: Colors.transparent,
          scrolledUnderElevation: 0,
        ),
        body: content,
      ),
    );
  }
}
