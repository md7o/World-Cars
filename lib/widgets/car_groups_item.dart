// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';

// import '../models/car.dart';

// class CarGroupsItem extends StatelessWidget {
//   const CarGroupsItem({
//     super.key,
//     required this.car,
//   });
//   final Car car;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           child: Column(
//             children: [
//               // Image.asset(
//               //   cars.imgAssets,
//               //   width: 45,
//               // ),
//               const SizedBox(
//                 height: 10,
//               ),
//               // Text(
//               //   car.definition[index].carName,
//               //   style: const TextStyle(
//               //     fontSize: 35,
//               //     fontWeight: FontWeight.normal,
//               //   ),
//               // )
//             ],
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.5),
//                   blurRadius: 20,
//                 ),
//               ],
//             ),
//             child: Stack(
//               children: [
//                 Positioned.fill(
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(10),
//                     child: CachedNetworkImage(
//                       imageUrl: car.definition[index].carImage,
//                       placeholder: (context, url) => Center(
//                         child: Padding(
//                           padding: const EdgeInsets.only(bottom: 40),
//                           child: Container(
//                             color: Colors.transparent,
//                             height: 50,
//                             width: 50,
//                             child: const CircularProgressIndicator(
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                       errorWidget: (context, url, error) =>
//                           const Icon(Icons.error),
//                       imageBuilder: ((context, imageProvider) {
//                         return Container(
//                           decoration: BoxDecoration(
//                             image: DecorationImage(
//                               image: imageProvider,
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         );
//                       }),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: 200,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     borderRadius: const BorderRadius.only(
//                       bottomLeft: Radius.circular(10),
//                       bottomRight: Radius.circular(10),
//                     ),
//                     gradient: LinearGradient(
//                       begin: Alignment.bottomCenter,
//                       end: Alignment.topCenter,
//                       colors: [
//                         Colors.black.withOpacity(0.7),
//                         Colors.transparent
//                       ],
//                     ),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 30, horizontal: 10),
//                         child: Text(
//                           car.definition[index].carName,
//                           style: const TextStyle(
//                             color: Colors.white,
//                             fontSize: 25,
//                             fontWeight: FontWeight.bold,
//                           ),
//                           textAlign: TextAlign.left,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
