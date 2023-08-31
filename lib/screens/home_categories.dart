import 'package:flutter/material.dart';
import 'package:world_car/models/car.dart';
import 'package:world_car/models/category.dart';
import 'package:world_car/screens/brands.dart';
import 'package:world_car/screens/search.dart';
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

class _HomeCategoriesState extends State<HomeCategories> {
  void _selectCategory(BuildContext context, CategoryC categoryT) {
    final filteredCars = detailsCar
        .where((car) => car.categories.contains(categoryT.id))
        .toList();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Brands(
          title: categoryT.cityName,
          cityLogo: categoryT.cityLogo,
          categoryT: categoryT,
          cars: filteredCars,
        ),
      ),
    );
  }

  //

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
        body: Column(
          children: [
            // Expanded(
            //   child: ListView.builder(
            //     shrinkWrap: true,
            //     itemCount: widget.assortments.length,
            //     itemBuilder: (context, index) {
            //       return Row(
            //         children: [
            //           IconButton(
            //             onPressed: () {
            //               _Searchy();
            //               // Navigator.of(context).push(
            //               //   MaterialPageRoute(
            //               //     builder: (ctx) => SearchEngine(
            //               //       // car: car,
            //               //       assortment: widget.assortments,
            //               //     ),
            //               //   ),
            //               // );
            //             },
            //             icon: Icon(
            //               Icons.search,
            //             ),
            //           ),
            //         ],
            //       );
            //     },
            //   ),
            // ),
            // Row(
            //   children: [
            //     IconButton(
            //       onPressed: () {
            //         _Searchy(context, car);
            //         // Navigator.of(context).push(
            //         //   MaterialPageRoute(
            //         //     builder: (ctx) => SearchEngine(
            //         //       // car: car,
            //         //       assortment: widget.assortments,
            //         //     ),
            //         //   ),
            //         // );
            //       },
            //       icon: Icon(
            //         Icons.search,
            //       ),
            //     ),
            //   ],
            // ),
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
    );
  }
}
