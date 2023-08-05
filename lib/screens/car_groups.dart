import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:world_car/models/category.dart';
import 'package:world_car/screens/car_details.dart';

import '../models/car.dart';

class CarsGroups extends StatelessWidget {
  const CarsGroups({
    super.key,
    required this.cars,
    required this.categoryT,
    required this.assortment,
  });

  final CategoryT categoryT;
  final Car cars;
  final List<Assortment> assortment;

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
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    children: [
                      FadeInImage(
                        placeholder: MemoryImage(kTransparentImage),
                        image: AssetImage(cars.imgAssets),
                        fit: BoxFit.cover,
                        height: 40,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        cars.title,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Scrollbar(
                    thickness: 2,
                    radius: Radius.circular(50),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: assortment.length,
                        itemBuilder: (ctx, index) => Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (ctx) => CarDetails(
                                      categoryT: categoryT,
                                      cars: cars,
                                      assortment: assortment[index],
                                      details: assortment[index].details,
                                    ),
                                  ),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 30),
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                assortment[index].carImage,
                                            placeholder: (context, url) =>
                                                Center(
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
                                            errorWidget:
                                                (context, url, error) =>
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 30,
                                                      horizontal: 10),
                                              child: Text(
                                                assortment[index].carName,
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: content,
    );

    // body: Column(
    //   children: [
    //     Container(
    //       child: Center(
    //         child: Padding(
    //           padding: const EdgeInsets.symmetric(vertical: 50),
    //           child: Column(
    //             children: [
    //               Image.asset(
    //                 cars.imgAssets,
    //                 width: 45,
    //               ),
    //               const SizedBox(
    //                 height: 10,
    //               ),
    //               Text(
    //                 cars.title,
    //                 style: const TextStyle(
    //                   fontSize: 35,
    //                   fontWeight: FontWeight.normal,
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //       ),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.all(5),
    //       child: Scrollbar(
    //         thickness: 3,
    //         child:
    //             ListView(physics: const BouncingScrollPhysics(), children: [
    //           Padding(
    //             padding:
    //                 const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
    //             child: Container(
    //               decoration: BoxDecoration(
    //                 borderRadius: BorderRadius.circular(10),
    //                 boxShadow: [
    //                   BoxShadow(
    //                     color: Colors.black.withOpacity(0.5),
    //                     blurRadius: 20,
    //                   ),
    //                 ],
    //               ),
    //               child: Stack(
    //                 children: [
    //                   Positioned.fill(
    //                     child: ClipRRect(
    //                       borderRadius: BorderRadius.circular(10),
    //                       child: CachedNetworkImage(
    //                         imageUrl: cars.imgAssets,
    //                         placeholder: (context, url) => Center(
    //                           child: Padding(
    //                             padding: const EdgeInsets.only(bottom: 40),
    //                             child: Container(
    //                               color: Colors.transparent,
    //                               height: 50,
    //                               width: 50,
    //                               child: const CircularProgressIndicator(
    //                                 color: Colors.white,
    //                               ),
    //                             ),
    //                           ),
    //                         ),
    //                         errorWidget: (context, url, error) =>
    //                             const Icon(Icons.error),
    //                         imageBuilder: ((context, imageProvider) {
    //                           return Container(
    //                             decoration: BoxDecoration(
    //                               image: DecorationImage(
    //                                 image: imageProvider,
    //                                 fit: BoxFit.cover,
    //                               ),
    //                             ),
    //                           );
    //                         }),
    //                       ),
    //                     ),
    //                   ),
    //                   Container(
    //                     height: 200,
    //                     width: double.infinity,
    //                     decoration: BoxDecoration(
    //                       borderRadius: const BorderRadius.only(
    //                         bottomLeft: Radius.circular(10),
    //                         bottomRight: Radius.circular(10),
    //                       ),
    //                       gradient: LinearGradient(
    //                         begin: Alignment.bottomCenter,
    //                         end: Alignment.topCenter,
    //                         colors: [
    //                           Colors.black.withOpacity(0.7),
    //                           Colors.transparent
    //                         ],
    //                       ),
    //                     ),
    //                     child: Column(
    //                       mainAxisAlignment: MainAxisAlignment.end,
    //                       crossAxisAlignment: CrossAxisAlignment.center,
    //                       children: [
    //                         Padding(
    //                           padding: const EdgeInsets.symmetric(
    //                               vertical: 30, horizontal: 10),
    //                           child: Text(
    //                             cars.title,
    //                             style: const TextStyle(
    //                               color: Colors.white,
    //                               fontSize: 25,
    //                               fontWeight: FontWeight.bold,
    //                             ),
    //                             textAlign: TextAlign.left,
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ]),
    //       ),
    //     ),
    //   ],
    // ),

    // Widget groupsItem = Column(
    //   children: [
    //     Expanded(
    //       child: Scrollbar(
    //         thickness: 3,
    //         child: ListView(
    //           physics: const BouncingScrollPhysics(),
    //           shrinkWrap: true,
    //           children: [
    //             SizedBox(
    //               height: 150,
    //               child: Scrollbar(
    //                 thickness: 2,
    //                 radius: Radius.circular(50),
    //                 child: Padding(
    //                   padding: const EdgeInsets.all(8.0),
    //                   child: ListView.builder(
    //                     physics: BouncingScrollPhysics(),
    //                     shrinkWrap: true,
    //                     itemCount: cars.length,
    //                     itemBuilder: (ctx, index) => Column(
    //                       children: [
    //                         CarGroupsItem(
    //                           car: cars[index],
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ],
    // );
    // return Scaffold(
    //   body: groupsItem,
    // );
  }
}
