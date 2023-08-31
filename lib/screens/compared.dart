// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:world_car/models/car.dart';
// import 'package:world_car/provider/details_provider.dart';

// class Compared extends ConsumerStatefulWidget {
//   const Compared({
//     super.key,
//     required this.car,
//     // required this.assortment,
//   });

//   // final List<Assortment> assortment;

//   final List<Car> car;

//   @override
//   ConsumerState<Compared> createState() => _ComparedState();
// }

// class _ComparedState extends ConsumerState<Compared> {
//   @override
//   Widget build(BuildContext context) {
//     final list = ref.watch(comparedDetailsProvider);

//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [
//             Theme.of(context).colorScheme.background,
//             Theme.of(context).colorScheme.onBackground,
//             Theme.of(context).colorScheme.tertiary,
//           ],
//           begin: Alignment.bottomRight,
//           end: Alignment.topCenter,
//         ),
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//         ),
//         // Padding(
//         //   padding: const EdgeInsets.symmetric(horizontal: 5),
//         //   child: Stack(
//         //     alignment: AlignmentDirectional.center,
//         //     children: [
//         //       Row(
//         //         crossAxisAlignment: CrossAxisAlignment.start,
//         //         mainAxisAlignment: MainAxisAlignment.center,
//         //         children: [
//         //           Column(
//         //             children: [
//         //               if (widget
//         //                   .assortment[index].carImage.isNotEmpty)
//         //                 ClipRRect(
//         //                   borderRadius: BorderRadius.circular(8.0),
//         //                   child: Image.network(
//         //                     widget.assortment[index].carImage,
//         //                     scale: 5,
//         //                   ),
//         //                 ),
//         //               Text(
//         //                 widget.assortment[index].carName,
//         //                 style: TextStyle(
//         //                     color: Colors.white,
//         //                     fontSize: 10,
//         //                     fontWeight: FontWeight.normal),
//         //               ),
//         //             ],
//         //           ),
//         //           SizedBox(
//         //             width: 2,
//         //           ),
//         //           Column(
//         //             children: [
//         //               ClipRRect(
//         //                 borderRadius: BorderRadius.circular(8.0),
//         //                 child: Image.network(
//         //                   widget.assortment[index].carImage,
//         //                   scale: 5,
//         //                 ),
//         //               ),
//         //               Text(
//         //                 widget.assortment[index].carName,
//         //                 style: TextStyle(
//         //                     color: Colors.white,
//         //                     fontSize: 10,
//         //                     fontWeight: FontWeight.normal),
//         //               ),
//         //             ],
//         //           ),
//         //         ],
//         //       ),
//         //       CircleAvatar(
//         //         backgroundColor: Colors.black,
//         //         maxRadius: 15,
//         //         child: Text('VS'),
//         //       ),
//         //     ],
//         //   ),
//         // ),
//         body: Column(
//           children: [
//             Expanded(
//               child: ListView.builder(
//                 shrinkWrap: true,
//                 itemCount: list.length,
//                 itemBuilder: (context, index) {
//                   return Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 30, vertical: 8),
//                         child: Container(
//                           decoration: BoxDecoration(
//                             gradient: LinearGradient(
//                               colors: [
//                                 Theme.of(context).colorScheme.primary,
//                                 Theme.of(context).colorScheme.secondary,
//                               ],
//                               begin: Alignment.bottomRight,
//                               end: Alignment.topCenter,
//                             ),
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 // hlao.toString(),
//                                 list[index]
//                                     .assortment[index]
//                                     .details[index]
//                                     .detailInfo,
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyMedium!
//                                     .copyWith(fontWeight: FontWeight.bold),
//                               ),
//                               // Text(
//                               //   list[index].detailName.replaceAll(":", ""),
//                               //   style: TextStyle(color: Colors.grey[400]),
//                               // ),
//                               // Row(
//                               //   children: [
//                               //     Text(
//                               //       list[index].detailInfo,
//                               //       style: Theme.of(context)
//                               //           .textTheme
//                               //           .bodyMedium!
//                               //           .copyWith(fontWeight: FontWeight.bold),
//                               //     ),
//                               //   ],
//                               // )
//                             ],
//                           ),
//                         ),
//                       ),
//                       Divider(
//                         indent: 20,
//                         endIndent: 20,
//                         thickness: 1,
//                         color: Color(0x73FFFFFF),
//                       ),
//                     ],
//                   );
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
