import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:Car_Wave/widgets/brands_item.dart';
import '../models/car.dart';
import '../models/category.dart';
import '../widgets/brands_facts.dart';
import 'car_groups.dart';

class Brands extends StatefulWidget {
  const Brands({
    super.key,
    this.title,
    this.cityLogo,
    required this.cars,
    required this.categoryT,
    required this.transitionAnimation,
  });

  final Animation<double> transitionAnimation;
  final String? title;
  final CategoryC categoryT;
  final String? cityLogo;
  final List<Car> cars;

  @override
  State<Brands> createState() => _BrandsState();
}

class _BrandsState extends State<Brands> {
  // Route _createRoute() {
  //   return PageRouteBuilder(
  //     transitionDuration: Duration(milliseconds: 600),
  //     reverseTransitionDuration: Duration(milliseconds: 400),
  //     pageBuilder: (context, animation, secondaryAnimation) => CarsGroups(
  //       categoryT: widget.categoryT,
  //       cars: widget.cars[index],
  //       // assortment: cars[index].assortment,
  //     ),
  //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //       const begin = Offset(-0.2, 1.0);
  //       const end = Offset.zero;
  //       const curve = Curves.ease;

  //       var tween = Tween(begin: begin, end: end).chain(
  //         CurveTween(curve: curve),
  //       );

  //       return SlideTransition(
  //         position: animation.drive(tween),
  //         child: child,
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    Widget content = Column(
      children: [
        Expanded(
          child: Scrollbar(
            thickness: 3,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 80,
                  ),
                  child: AnimatedBuilder(
                    animation: widget.transitionAnimation,
                    builder: (context, child) {
                      return SlideTransition(
                        position: Tween<Offset>(
                                begin: Offset(0, 1), end: Offset(0, 0))
                            .animate(
                          CurvedAnimation(
                            parent: widget.transitionAnimation,
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
                    child: Row(
                      children: [
                        Opacity(
                          opacity: 1,
                          child: FadeInImage(
                            placeholder: MemoryImage(kTransparentImage),
                            image: NetworkImage(widget.categoryT.cityLogo),
                            fit: BoxFit.cover,
                            height: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          widget.categoryT.cityName,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 150,
                  child: Scrollbar(
                    thickness: 2,
                    radius: Radius.circular(50),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AnimatedBuilder(
                        animation: widget.transitionAnimation,
                        builder: (context, child) {
                          return SlideTransition(
                            position: Tween<Offset>(
                                    begin: Offset(0, 1), end: Offset(0, 0))
                                .animate(
                              CurvedAnimation(
                                parent: widget.transitionAnimation,
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
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: widget.cars.length,
                          itemBuilder: (ctx, index) => Column(
                            children: [
                              BrandsItem(
                                car: widget.cars[index],
                                cityName: widget.categoryT.cityName,
                                cityLogo: widget.categoryT.cityLogo,
                                onSelectBrand: () {
                                  Navigator.of(context).push(
                                    PageRouteBuilder(
                                      transitionDuration:
                                          Duration(milliseconds: 600),
                                      reverseTransitionDuration:
                                          Duration(milliseconds: 400),
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          CarsGroups(
                                        categoryT: widget.categoryT,
                                        cars: widget.cars[index],
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
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                AnimatedBuilder(
                  animation: widget.transitionAnimation,
                  builder: (context, child) {
                    return SlideTransition(
                      position:
                          Tween<Offset>(begin: Offset(0, 1), end: Offset(0, 0))
                              .animate(CurvedAnimation(
                        parent: widget.transitionAnimation,
                        curve: Interval(
                          0.2,
                          1,
                          curve: Curves.ease,
                        ),
                      )),
                      child: child,
                    );
                  },
                  child: BrandFacts(
                    categoryT: widget.categoryT,
                  ),
                )
              ],
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
        ),
        body: content,
      ),
    );
  }
}
