import 'package:flutter/material.dart';
import 'package:world_car/models/category.dart';
import 'package:world_car/screens/brands.dart';
import 'package:world_car/widgets/grid_home_category.dart';
import 'package:world_car/widgets/home_slider.dart';

import '../data/details_data.dart';

class HomeCategories extends StatefulWidget {
  const HomeCategories({
    super.key,
  });

  @override
  State<HomeCategories> createState() => _HomeCategoriesState();
}

class _HomeCategoriesState extends State<HomeCategories>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  void _selectCategory(BuildContext context, CategoryC categoryT) {
    final filteredCars = detailsCar
        .where((car) => car.categories.contains(categoryT.id))
        .toList();

    Route _createRoute() {
      return PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 600),
        reverseTransitionDuration: Duration(milliseconds: 400),
        pageBuilder: (context, animation, secondaryAnimation) => Brands(
          transitionAnimation: animation,
          title: categoryT.cityName,
          cityLogo: categoryT.cityLogo,
          categoryT: categoryT,
          cars: filteredCars,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0, 1.0);
          const end = Offset.zero;
          const curve = Curves.ease;

          var tween = Tween(begin: begin, end: end).chain(
            CurveTween(curve: curve),
          );

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      );
    }

    Navigator.of(context).push(
      _createRoute(),
    );
  }

  @override
  initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 400), vsync: this, value: 0);
    _animation = CurvedAnimation(
        parent: _controller, curve: Curves.fastEaseInToSlowEaseOut);

    _controller.forward();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
          leading: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.bar_chart_rounded,
              size: 30,
              color: Colors.white,
            ),
          ),
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                Icons.search_rounded,
                size: 30,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: ScaleTransition(
          scale: _animation,
          child: Column(
            children: [
              Expanded(
                child: Scrollbar(
                  thickness: 2,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      homeSlider(),
                      GridView(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 50),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 3,
                          crossAxisSpacing: 3,
                          crossAxisCount: 2,
                          mainAxisExtent: 120,
                        ),
                        children: [
                          for (final categoryT in availableCategories)
                            GridHomeCategory(
                              categoryT: categoryT,
                              onSelectCategory: () {
                                _selectCategory(
                                  context,
                                  categoryT,
                                );
                              },
                            )
                        ],
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
  }
}
