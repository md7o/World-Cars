import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../models/car.dart';

class BrandsItem extends StatelessWidget {
  const BrandsItem({
    super.key,
    required this.car,
    this.cityLogo,

    // required this.onSelectMeal,
  });
  final String? cityLogo;
  final Car car;
  // final void Function(WorldCar worldItem) onSelectMeal;

  @override
  // Widget build(BuildContext context) {
  //   return Card(
  //     margin: const EdgeInsets.all(8),
  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  //     clipBehavior: Clip.hardEdge,
  //     elevation: 2,
  //     child: Column(
  //       children: [
  //         // Hero(
  //         //   tag: car.id,
  //         //   child: FadeInImage(
  //         //     placeholder: MemoryImage(kTransparentImage),
  //         //     image: NetworkImage(car.imgAssets),
  //         //     fit: BoxFit.cover,
  //         //     height: 200,
  //         //     width: double.infinity,
  //         //   ),
  //         // ),
  //         Positioned(
  //           bottom: 0,
  //           left: 0,
  //           right: 0,
  //           child: Container(
  //             color: Colors.black54,
  //             padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 44),
  //             child: Column(
  //               children: [
  //                 Text(
  //                   car.title,
  //                   maxLines: 2,
  //                   textAlign: TextAlign.center,
  //                   softWrap: true,
  //                   overflow: TextOverflow.ellipsis,
  //                   style: const TextStyle(
  //                       fontSize: 20,
  //                       fontWeight: FontWeight.bold,
  //                       color: Colors.white),
  //                 ),
  //                 const SizedBox(
  //                   height: 12,
  //                 ),
  //                 // Row(
  //                 //   mainAxisAlignment: MainAxisAlignment.center,
  //                 //   children: [
  //                 //     MealItemTrait(
  //                 //       icon: Icons.schedule,
  //                 //       label: '${meal.duration} min',
  //                 //     ),
  //                 //     const SizedBox(
  //                 //       width: 12,
  //                 //     ),
  //                 //     MealItemTrait(
  //                 //       icon: Icons.work,
  //                 //       label: complexityText,
  //                 //     ),
  //                 //     const SizedBox(
  //                 //       width: 12,
  //                 //     ),
  //                 //     MealItemTrait(
  //                 //       icon: Icons.attach_money,
  //                 //       label: affordabilityText,
  //                 //     ),
  //                 //   ],
  //                 // )
  //               ],
  //             ),
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(2),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Row(
                  children: [
                    FadeInImage(
                      placeholder: MemoryImage(kTransparentImage),
                      image: AssetImage(car.imgAssets),
                      fit: BoxFit.cover,
                      height: 50,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      car.title,
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 160,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Scrollbar(
                thickness: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    width: 150,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(car.imgAssets, width: 45),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text(
                                        'Top',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const Icon(
                                      Icons.workspace_premium,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                ),
                                child: Text(
                                  car.title,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )),
          ),
        )
      ],
    );
  }
}
