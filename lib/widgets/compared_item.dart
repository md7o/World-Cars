// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';

// class ComparedItem extends StatelessWidget {
//   const ComparedItem({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Stack(
//           children: [
//             Positioned.fill(
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(10),
//                 child: CachedNetworkImage(
//                   imageUrl: 'assortment[index].carImage',
//                   placeholder: (context, url) => Center(
//                     child: Padding(
//                       padding: const EdgeInsets.only(bottom: 40),
//                       child: Container(
//                         color: Colors.transparent,
//                         height: 50,
//                         width: 50,
//                         child: const CircularProgressIndicator(
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                   errorWidget: (context, url, error) => const Icon(Icons.error),
//                   imageBuilder: ((context, imageProvider) {
//                     return Container(
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: imageProvider,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     );
//                   }),
//                 ),
//               ),
//             ),
//             Container(
//               height: 180,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 borderRadius: const BorderRadius.only(
//                   bottomLeft: Radius.circular(10),
//                   bottomRight: Radius.circular(10),
//                 ),
//                 gradient: LinearGradient(
//                   begin: Alignment.bottomCenter,
//                   end: Alignment.topCenter,
//                   colors: [Colors.black.withOpacity(0.8), Colors.transparent],
//                 ),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(
//                         vertical: 20, horizontal: 10),
//                     child: Text(
//                       'assortment[index].carName,',
//                       style: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       textAlign: TextAlign.left,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
