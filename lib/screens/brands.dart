import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:world_car/widgets/brands_item.dart';
import '../data/details_data.dart';
import '../models/car.dart';
import '../models/category.dart';
import '../widgets/brand_facts.dart';
import 'car_groups.dart';

class Brands extends StatelessWidget {
  const Brands({
    super.key,
    this.title,
    this.cityLogo,
    required this.cars,
    required this.categoryT,
  });

  final String? title;
  final CategoryT categoryT;
  final String? cityLogo;
  final List<Car> cars;

  // void _SelectCar(
  //   BuildContext context,
  //   Car car,
  // ) {
  //   Navigator.of(context).push(
  //     MaterialPageRoute(
  //       builder: (ctx) => CarsGroups(
  //         categoryT: categoryT,
  //         cars: car,
  //         definition: cars.definition[index],
  //       ),
  //     ),
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
                  padding: const EdgeInsets.only(left: 20, top: 90, bottom: 10),
                  child: Row(
                    children: [
                      FadeInImage(
                        placeholder: MemoryImage(kTransparentImage),
                        image: NetworkImage(categoryT.cityLogo),
                        fit: BoxFit.cover,
                        height: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        categoryT.cityName,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                  child: Scrollbar(
                    thickness: 2,
                    radius: Radius.circular(50),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: cars.length,
                        itemBuilder: (ctx, index) => Column(
                          children: [
                            BrandsItem(
                              car: cars[index],
                              cityName: categoryT.cityName,
                              cityLogo: categoryT.cityLogo,
                              onSelectBrand: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (ctx) => CarsGroups(
                                      categoryT: categoryT,
                                      cars: cars[index],
                                      assortment: cars[index].assortment,
                                    ),
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
                SizedBox(
                  height: 40,
                ),
                BrandFacts(
                  categoryT: categoryT,
                )
              ],
            ),
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: content,
    );
  }
}









// class Brands extends StatelessWidget {
//   const Brands({
//     super.key,
//     required this.worldItem,
//     this.label,
//     this.CountryId,
//     required this.carItem,
//   });

//   final List<WorldCar> worldItem;
//   final List<Cars> carItem;
//   final String? label;
//   final String? CountryId;
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     // ignore: unused_local_variable
//     final text = MediaQuery.of(context).platformBrightness == Brightness.dark
//         ? 'darkTheme'
//         : 'LightTheme';
//     return Scaffold(
//       body: Column(
//         children: [
//           Row(
//             children: [
//               InkWell(
//                 splashColor: Colors.transparent,
//                 highlightColor: Colors.transparent,
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.only(top: 40, left: 20),
//                   child: Container(
//                     width: 30,
//                     height: 30,
//                     decoration: BoxDecoration(
//                       color: Theme.of(context).primaryColor,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: const Icon(
//                       Icons.arrow_back_ios_rounded,
//                       color: Colors.white,
//                       size: 18,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(2),
//               child: Scrollbar(
//                 thickness: 4,
//                 child: ListView(
//                   physics: const BouncingScrollPhysics(),
//                   children: [
//                     Column(
//                       children: [
//                         SizedBox(
//                           height: MediaQuery.of(context).size.width / 6.5,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 20),
//                           child: Row(
//                             children: [
//                               CachedNetworkImage(
//                                 imageUrl: CountryId!,
//                                 width: 45,
//                               ),
//                               const SizedBox(
//                                 width: 10,
//                               ),
//                               Text(
//                                 label!,
//                                 style: GoogleFonts.comfortaa(
//                                   color: Colors.white,
//                                   textStyle: const TextStyle(
//                                     fontSize: 35,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 15,
//                         ),
                        // SizedBox(
                        //   height: 160,
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(5),
                        //     child: Scrollbar(
                        //       thickness: 2,
                        //       child: ListView.builder(
                        //         physics: const BouncingScrollPhysics(),
                        //         shrinkWrap: true,
                        //         scrollDirection: Axis.horizontal,
                        //         itemCount: carItem.length,
                        //         itemBuilder: (BuildContext context, int index) {
                        //           return InkWell(
                        //             splashColor: Colors.transparent,
                        //             highlightColor: Colors.transparent,
                        //             onTap: () => Navigator.push(
                        //               context,
                        //               PageRouteBuilder(
                        //                 pageBuilder: (context, animation,
                        //                     secondaryAnimation) {
                        //                   return car_types(
                        //                     item: worldItem[index],
                        //                     carItem: worldItem[index].carItems,
                        //                     transitionAnimation: animation,
                        //                   );
                        //                 },
                        //                 transitionDuration:
                        //                     const Duration(milliseconds: 1300),
                        //               ),
                        //             ),
                        //             child: Padding(
                        //               padding: const EdgeInsets.all(8),
                        //               child: Container(
                        //                 width: 150,
                        //                 decoration: BoxDecoration(
                        //                   color: Theme.of(context).primaryColor,
                        //                   borderRadius:
                        //                       BorderRadius.circular(20),
                        //                 ),
                        //                 child: Padding(
                        //                   padding: const EdgeInsets.symmetric(
                        //                       vertical: 5),
                        //                   child: Column(
                        //                     mainAxisAlignment:
                        //                         MainAxisAlignment.spaceAround,
                        //                     crossAxisAlignment:
                        //                         CrossAxisAlignment.start,
                        //                     children: [
                        //                       Padding(
                        //                         padding:
                        //                             const EdgeInsets.symmetric(
                        //                           horizontal: 15,
                        //                         ),
                        //                         child: Row(
                        //                           mainAxisAlignment:
                        //                               MainAxisAlignment
                        //                                   .spaceBetween,
                        //                           children: [
                        //                             Image.asset(
                        //                                 worldItem[index]
                        //                                     .imageUrl,
                        //                                 width: 45),
                        //                             Row(
                        //                               children: [
                        //                                 Padding(
                        //                                   padding:
                        //                                       const EdgeInsets
                        //                                           .all(3),
                        //                                   child: Text(
                        //                                     'Top',
                        //                                     style: GoogleFonts
                        //                                         .comfortaa(
                        //                                       textStyle: const TextStyle(
                        //                                           color: Colors
                        //                                               .white,
                        //                                           fontSize: 13,
                        //                                           fontWeight:
                        //                                               FontWeight
                        //                                                   .bold),
                        //                                     ),
                        //                                   ),
                        //                                 ),
                        //                                 const Icon(
                        //                                   Icons
                        //                                       .workspace_premium,
                        //                                   size: 20,
                        //                                 ),
                        //                               ],
                        //                             ),
                        //                           ],
                        //                         ),
                        //                       ),
                        //                       Column(
                        //                         crossAxisAlignment:
                        //                             CrossAxisAlignment.start,
                        //                         children: [
                        //                           Padding(
                        //                             padding: const EdgeInsets
                        //                                 .symmetric(
                        //                               horizontal: 15,
                        //                             ),
                        //                             child: Text(
                        //                               worldItem[index].name,
                        //                               style:
                        //                                   GoogleFonts.comfortaa(
                        //                                 textStyle:
                        //                                     const TextStyle(
                        //                                         color: Colors
                        //                                             .white,
                        //                                         fontSize: 16,
                        //                                         fontWeight:
                        //                                             FontWeight
                        //                                                 .bold),
                        //                               ),
                        //                             ),
                        //                           ),
                        //                         ],
                        //                       )
                        //                     ],
                        //                   ),
                        //                 ),
                        //               ),
                        //             ),
                        //           );
//                                 },
//                               ),
//                             ),
//                           ),
//                         ),
//                           

