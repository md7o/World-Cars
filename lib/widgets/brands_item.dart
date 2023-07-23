import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../models/car.dart';

class BrandsItem extends StatelessWidget {
  const BrandsItem({
    super.key,
    required this.car,
    this.title,
    // required this.onSelectMeal,
  });

  final Car car;
  final String? title;
  // final void Function(WorldCar worldItem) onSelectMeal;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
        onTap: () {
          // onSelectMeal(meal);
        },
        child: Stack(
          children: [
            Hero(
              tag: car.id,
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: NetworkImage(car.imgAssets),
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black54,
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 44),
                child: Column(
                  children: [
                    Text(
                      title!,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     MealItemTrait(
                    //       icon: Icons.schedule,
                    //       label: '${meal.duration} min',
                    //     ),
                    //     const SizedBox(
                    //       width: 12,
                    //     ),
                    //     MealItemTrait(
                    //       icon: Icons.work,
                    //       label: complexityText,
                    //     ),
                    //     const SizedBox(
                    //       width: 12,
                    //     ),
                    //     MealItemTrait(
                    //       icon: Icons.attach_money,
                    //       label: affordabilityText,
                    //     ),
                    //   ],
                    // )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: Colors.amber,
  //     body: Column(
  //       children: [
  //         Row(
  //           children: [
  //             Image.asset(car.imgAssets),
  //             Text(car.title),
  //           ],
  //         ),
  //         Row(
  //           children: [
  //             SizedBox(
  //               height: 160,
  //               child: Padding(
  //                 padding: const EdgeInsets.all(5),
  //                 child: Scrollbar(
  //                   thickness: 2,
  //                   child: ListView(
  //                       physics: const BouncingScrollPhysics(),
  //                       shrinkWrap: true,
  //                       scrollDirection: Axis.horizontal,
  //                       prototypeItem: Padding(
  //                         padding: const EdgeInsets.all(8),
  //                         child: Container(
  //                           width: 150,
  //                           decoration: BoxDecoration(
  //                             color: Theme.of(context).primaryColor,
  //                             borderRadius: BorderRadius.circular(20),
  //                           ),
  //                           child: Padding(
  //                             padding: const EdgeInsets.symmetric(vertical: 5),
  //                             child: Column(
  //                               mainAxisAlignment:
  //                                   MainAxisAlignment.spaceAround,
  //                               crossAxisAlignment: CrossAxisAlignment.start,
  //                               children: [
  //                                 Padding(
  //                                   padding: const EdgeInsets.symmetric(
  //                                     horizontal: 15,
  //                                   ),
  //                                   child: Row(
  //                                     mainAxisAlignment:
  //                                         MainAxisAlignment.spaceBetween,
  //                                     children: [
  //                                       Image.asset(car.imgAssets, width: 45),
  //                                       Row(
  //                                         children: [
  //                                           Padding(
  //                                             padding: const EdgeInsets.all(3),
  //                                             child: Text(
  //                                               'Top',
  //                                               style: TextStyle(
  //                                                   color: Colors.white,
  //                                                   fontSize: 13,
  //                                                   fontWeight:
  //                                                       FontWeight.bold),
  //                                             ),
  //                                           ),
  //                                           const Icon(
  //                                             Icons.workspace_premium,
  //                                             size: 20,
  //                                           ),
  //                                         ],
  //                                       ),
  //                                     ],
  //                                   ),
  //                                 ),
  //                                 Column(
  //                                   crossAxisAlignment:
  //                                       CrossAxisAlignment.start,
  //                                   children: [
  //                                     Padding(
  //                                       padding: const EdgeInsets.symmetric(
  //                                         horizontal: 15,
  //                                       ),
  //                                       child: Text(
  //                                         car.title,
  //                                         style: TextStyle(
  //                                             color: Colors.white,
  //                                             fontSize: 16,
  //                                             fontWeight: FontWeight.bold),
  //                                       ),
  //                                     ),
  //                                   ],
  //                                 )
  //                               ],
  //                             ),
  //                           ),
  //                         ),
  //                       )),
  //                 ),
  //               ),
  //             ),
  //           ],
  //         )
  //       ],
  //     ),
  //   );
  // }
}
