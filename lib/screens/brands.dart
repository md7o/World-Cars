import 'package:flutter/material.dart';
import 'package:world_car/widgets/brands_item.dart';

import '../models/car.dart';

class Brands extends StatelessWidget {
  const Brands({
    super.key,
    this.title,
    this.cityLogo,
    required this.cars,
  });

  final String? title;
  final String? cityLogo;
  final List<Car> cars;
  // void SelectMeal(BuildContext context, WorldCar meal) {
  //   Navigator.of(context).push(
  //     MaterialPageRoute(
  //       builder: (ctx) => MealDetailsScreen(
  //         meal: meal,
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Uh oh ... nothing here!',
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            'Try selecting a diffrent category!',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
        ],
      ),
    );
    if (cars.isNotEmpty)
      content = ListView.builder(
          itemCount: cars.length,
          itemBuilder: (ctx, index) => BrandsItem(
                car: cars[index],

                // carDefinition: carDefinition[index],
              ));

    if (title == null) {
      return content;
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(title!),
        ),
        body: content);
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
//                         SizedBox(
//                           height: 160,
//                           child: Padding(
//                             padding: const EdgeInsets.all(5),
//                             child: Scrollbar(
//                               thickness: 2,
//                               child: ListView.builder(
//                                 physics: const BouncingScrollPhysics(),
//                                 shrinkWrap: true,
//                                 scrollDirection: Axis.horizontal,
//                                 itemCount: carItem.length,
//                                 itemBuilder: (BuildContext context, int index) {
//                                   return InkWell(
//                                     splashColor: Colors.transparent,
//                                     highlightColor: Colors.transparent,
//                                     onTap: () => Navigator.push(
//                                       context,
//                                       PageRouteBuilder(
//                                         pageBuilder: (context, animation,
//                                             secondaryAnimation) {
//                                           return car_types(
//                                             item: worldItem[index],
//                                             carItem: worldItem[index].carItems,
//                                             transitionAnimation: animation,
//                                           );
//                                         },
//                                         transitionDuration:
//                                             const Duration(milliseconds: 1300),
//                                       ),
//                                     ),
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(8),
//                                       child: Container(
//                                         width: 150,
//                                         decoration: BoxDecoration(
//                                           color: Theme.of(context).primaryColor,
//                                           borderRadius:
//                                               BorderRadius.circular(20),
//                                         ),
//                                         child: Padding(
//                                           padding: const EdgeInsets.symmetric(
//                                               vertical: 5),
//                                           child: Column(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.spaceAround,
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               Padding(
//                                                 padding:
//                                                     const EdgeInsets.symmetric(
//                                                   horizontal: 15,
//                                                 ),
//                                                 child: Row(
//                                                   mainAxisAlignment:
//                                                       MainAxisAlignment
//                                                           .spaceBetween,
//                                                   children: [
//                                                     Image.asset(
//                                                         worldItem[index]
//                                                             .imageUrl,
//                                                         width: 45),
//                                                     Row(
//                                                       children: [
//                                                         Padding(
//                                                           padding:
//                                                               const EdgeInsets
//                                                                   .all(3),
//                                                           child: Text(
//                                                             'Top',
//                                                             style: GoogleFonts
//                                                                 .comfortaa(
//                                                               textStyle: const TextStyle(
//                                                                   color: Colors
//                                                                       .white,
//                                                                   fontSize: 13,
//                                                                   fontWeight:
//                                                                       FontWeight
//                                                                           .bold),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                         const Icon(
//                                                           Icons
//                                                               .workspace_premium,
//                                                           size: 20,
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                               Column(
//                                                 crossAxisAlignment:
//                                                     CrossAxisAlignment.start,
//                                                 children: [
//                                                   Padding(
//                                                     padding: const EdgeInsets
//                                                         .symmetric(
//                                                       horizontal: 15,
//                                                     ),
//                                                     child: Text(
//                                                       worldItem[index].name,
//                                                       style:
//                                                           GoogleFonts.comfortaa(
//                                                         textStyle:
//                                                             const TextStyle(
//                                                                 color: Colors
//                                                                     .white,
//                                                                 fontSize: 16,
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .bold),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               )
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   );
//                                 },
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(
//                               top: 20, left: 20, bottom: 20),
//                           child: Row(
//                             children: [
//                               const Icon(
//                                 Icons.tips_and_updates_outlined,
//                                 size: 50,
//                               ),
//                               const SizedBox(
//                                 width: 15,
//                               ),
//                               Text(
//                                 "Facts",
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
//                         Column(
//                           children: [
//                             Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 20),
//                               child: Container(
//                                 height: MediaQuery.of(context).size.width * 0.3,
//                                 width: double.infinity,
//                                 decoration: BoxDecoration(
//                                   color: Theme.of(context).primaryColor,
//                                   borderRadius: const BorderRadius.all(
//                                     Radius.circular(20),
//                                   ),
//                                 ),
//                                 child: Padding(
//                                   padding: const EdgeInsets.symmetric(
//                                     horizontal: 20,
//                                   ),
//                                   child: Row(
//                                     children: [
//                                       Image.asset(
//                                         worldItem[1].imageUrl,
//                                         width: 58,
//                                       ),
//                                       const SizedBox(
//                                         width: 20,
//                                       ),
//                                       Flexible(
//                                         child: Text(
//                                           worldItem[4].name,
//                                           style: GoogleFonts.comfortaa(
//                                             textStyle: TextStyle(
//                                               color: Colors.white,
//                                               fontSize: width / 25,
//                                               fontWeight: FontWeight.bold,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.symmetric(vertical: 20),
//                               child: Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(horizontal: 20),
//                                 child: Container(
//                                   height:
//                                       MediaQuery.of(context).size.width * 0.3,
//                                   width: double.infinity,
//                                   decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor,
//                                     borderRadius: const BorderRadius.all(
//                                       Radius.circular(20),
//                                     ),
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         horizontal: 20),
//                                     child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       children: [
//                                         Flexible(
//                                           child: Text(
//                                             worldItem[5].name,
//                                             style: GoogleFonts.comfortaa(
//                                               textStyle: TextStyle(
//                                                   color: Colors.white,
//                                                   fontSize: width / 28,
//                                                   fontWeight: FontWeight.bold),
//                                             ),
//                                           ),
//                                         ),
//                                         Image.asset(
//                                           worldItem[5].imageUrl,
//                                           width: 72,
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
