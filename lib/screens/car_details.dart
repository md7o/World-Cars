import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:world_car/data/details_data.dart';

import '../models/car.dart';
import '../models/category.dart';

class CarDetails extends StatefulWidget {
  const CarDetails({
    super.key,
    required this.cars,
    required this.categoryT,
    required this.assortment,
    required this.details,
  });

  final CategoryT categoryT;
  final Car cars;
  final Assortment assortment;
  final List<Details> details;

  @override
  State<CarDetails> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            CarouselSlider.builder(
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height / 4,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() => activeIndex = index);
                },
              ),
              itemCount: widget.assortment.slideAblum.length,
              itemBuilder:
                  (BuildContext context, int index, int pageViewIndex) {
                return Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: CachedNetworkImage(
                          imageUrl: widget.assortment.slideAblum[index].sliding,
                          fit: BoxFit.cover,
                          placeholder: (context, url) => Center(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 40),
                              child: Container(
                                color: Colors.transparent,
                                height: 100,
                                width: 100,
                                child: const CircularProgressIndicator(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
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
                    ),
                  ],
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            buildIndicator(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeInImage(
                  placeholder: MemoryImage(kTransparentImage),
                  image: AssetImage(widget.cars.imgAssets),
                  fit: BoxFit.cover,
                  height: 35,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  widget.assortment.carName,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: widget.details.length,
                itemBuilder: (ctx, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  widget.details[index].detailPhoto,
                                  color: Colors.white,
                                  height: 30,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  widget.details[index].detailName,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Text(
                              widget.details[index].detailInfo,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: widget.assortment.slideAblum.length,
        effect: const ScrollingDotsEffect(
            dotWidth: 10,
            dotHeight: 10,
            dotColor: Colors.white,
            activeDotColor: Color(0xFF6F55BB),
            activeDotScale: 1.4),
      );
}

// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:world_car/models/world_car.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class CarDetails extends StatefulWidget {
//   const CarDetails({
//     super.key,
//     required this.detail,
//     required this.imageSlides,
//     required this.carItem,
//     required this.transitionAnimation,
//   });
//   final List<Details> detail;
//   final List<Slidering> imageSlides;
//   final Cars carItem;
//   final Animation<double> transitionAnimation;
//   @override
//   State<CarDetails> createState() => _CarDetailsState();
// }

// class _CarDetailsState extends State<CarDetails> {
//   int activeIndex = 0;

//   bool _isClicked = false;

//   void _toggleClick() {
//     setState(() {
//       _isClicked = !_isClicked;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           ScaleTransition(
//             scale: Tween<double>(begin: 0, end: 1).animate(
//               CurvedAnimation(
//                 parent: widget.transitionAnimation,
//                 curve: Curves.easeOutCubic,
//               ),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   IconButton(
//                     highlightColor: Colors.transparent,
//                     splashColor: Colors.transparent,
//                     icon: Icon(Icons.arrow_back_ios_rounded),
//                     onPressed: () {
//                       Navigator.pop(context);
//                     },
//                     // child: Container(
//                     //   width: 30,
//                     //   height: 30,
//                     //   decoration: BoxDecoration(
//                     //     color: Theme.of(context).primaryColor,
//                     //     borderRadius: BorderRadius.circular(10),
//                     //   ),
//                     //   child: const Icon(
//                     //     Icons.arrow_back_ios_rounded,
//                     //     color: Colors.white,
//                     //     size: 18,
//                     //   ),
//                     // ),
//                   ),
//                   IconButton(
//                     splashRadius: 20,
//                     splashColor: Colors.transparent,
//                     color: _isClicked ? Colors.red : Colors.white,
//                     icon: Icon(
//                       _isClicked
//                           ? Icons.favorite
//                           : Icons.favorite_border_outlined,
//                     ),
//                     onPressed: _toggleClick,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(8),
//               child: Scrollbar(
//                 thickness: 3,
//                 child: ListView(
//                   physics: const BouncingScrollPhysics(),
//                   children: [
//                     Column(
//                       children: [
//                         AnimatedBuilder(
//                           animation: widget.transitionAnimation,
//                           builder: (context, child) {
//                             return SlideTransition(
//                               position: Tween<Offset>(
//                                 begin: const Offset(0, -1),
//                                 end: const Offset(0, 0),
//                               ).animate(
//                                 CurvedAnimation(
//                                   curve: const Interval(0, 1,
//                                       curve: Curves.easeOutCubic),
//                                   parent: widget.transitionAnimation,
//                                 ),
//                               ),
//                               child: child,
//                             );
//                           },
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               CarouselSlider.builder(
//                                 options: CarouselOptions(
//                                   height:
//                                       MediaQuery.of(context).size.height / 5,
//                                   enlargeCenterPage: true,
//                                   enableInfiniteScroll: false,
//                                   onPageChanged: (index, reason) =>
//                                       setState(() => activeIndex = index),
//                                 ),
//                                 itemCount: widget.imageSlides.length,
//                                 itemBuilder: (BuildContext context,
//                                     int itemIndex, int pageViewIndex) {
//                                   return Stack(
//                                     children: [
//                                       Positioned.fill(
//                                         child: ClipRRect(
//                                           borderRadius:
//                                               BorderRadius.circular(20),
//                                           child: CachedNetworkImage(
//                                             imageUrl: widget
//                                                 .imageSlides[itemIndex]
//                                                 .dimensions,
//                                             fit: BoxFit.cover,
//                                             placeholder: (context, url) =>
//                                                 Center(
//                                               child: Padding(
//                                                 padding: const EdgeInsets.only(
//                                                     bottom: 40),
//                                                 child: Container(
//                                                   color: Colors.transparent,
//                                                   height: 100,
//                                                   width: 100,
//                                                   child:
//                                                       const CircularProgressIndicator(
//                                                     color: Colors.white,
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       Container(
//                                         height:
//                                             MediaQuery.of(context).size.height /
//                                                 5,
//                                         width: double.infinity,
//                                         decoration: BoxDecoration(
//                                           borderRadius: const BorderRadius.only(
//                                             bottomLeft: Radius.circular(20),
//                                             bottomRight: Radius.circular(20),
//                                           ),
//                                           gradient: LinearGradient(
//                                             begin: Alignment.bottomCenter,
//                                             end: Alignment.topCenter,
//                                             colors: [
//                                               Colors.black.withOpacity(0.7),
//                                               Colors.transparent
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   );
//                                 },
//                               ),
//                               const SizedBox(
//                                 height: 32,
//                               ),
//                               buildIndicator(),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(bottom: 20, top: 10),
//                           child: AnimatedBuilder(
//                             animation: widget.transitionAnimation,
//                             builder: (context, child) {
//                               return SlideTransition(
//                                 position: Tween<Offset>(
//                                   begin: const Offset(0, 1),
//                                   end: const Offset(0, 0),
//                                 ).animate(
//                                   CurvedAnimation(
//                                     curve: const Interval(0, 1,
//                                         curve: Curves.easeOutCubic),
//                                     parent: widget.transitionAnimation,
//                                   ),
//                                 ),
//                                 child: child,
//                               );
//                             },
//                             child: Text(
//                               widget.carItem.carName,
//                               style: GoogleFonts.josefinSans(
//                                 textStyle: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 25,
//                                   fontWeight: FontWeight.normal,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 650,
//                           child: Padding(
//                             padding: const EdgeInsets.all(
//                               5,
//                             ),
//                             child: GridView.builder(
//                               gridDelegate:
//                                   const SliverGridDelegateWithFixedCrossAxisCount(
//                                 mainAxisSpacing: 10,
//                                 crossAxisSpacing: 10,
//                                 crossAxisCount: 2,
//                                 mainAxisExtent: 150,
//                               ),
//                               physics: const BouncingScrollPhysics(),
//                               itemCount: widget.detail.length,
//                               itemBuilder: (BuildContext context, int index) {
//                                 return AnimatedBuilder(
//                                   animation: widget.transitionAnimation,
//                                   builder: (context, child) {
//                                     return SlideTransition(
//                                       position: Tween<Offset>(
//                                         begin: const Offset(0.5, 1),
//                                         end: const Offset(0, 0),
//                                       ).animate(
//                                         CurvedAnimation(
//                                           curve: const Interval(0, 1,
//                                               curve: Curves.easeOutCubic),
//                                           parent: widget.transitionAnimation,
//                                         ),
//                                       ),
//                                       child: child,
//                                     );
//                                   },
//                                   child: Container(
//                                     height: 10,
//                                     width: MediaQuery.of(context).size.width,
//                                     decoration: BoxDecoration(
//                                       color: Theme.of(context).primaryColor,
//                                       borderRadius: BorderRadius.circular(20),
//                                     ),
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Column(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceAround,
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.start,
//                                             children: [
//                                               Padding(
//                                                 padding:
//                                                     const EdgeInsets.symmetric(
//                                                         horizontal: 10),
//                                                 child: Image.asset(
//                                                   widget.detail[index]
//                                                       .detailPhoto,
//                                                   width: 35,
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                           Padding(
//                                             padding: const EdgeInsets.symmetric(
//                                                 horizontal: 10),
//                                             child: Column(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.start,
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: [
//                                                 Text(
//                                                   widget
//                                                       .detail[index].detailName,
//                                                   style: const TextStyle(
//                                                     color: Colors.white,
//                                                     fontSize: 18,
//                                                     fontWeight: FontWeight.w400,
//                                                   ),
//                                                 ),
//                                                 const SizedBox(
//                                                   height: 5,
//                                                 ),
//                                                 Padding(
//                                                   padding:
//                                                       const EdgeInsets.only(
//                                                           top: 8),
//                                                   child: Text(
//                                                     widget.detail[index]
//                                                         .detailInfo,
//                                                     style:
//                                                         GoogleFonts.josefinSans(
//                                                       textStyle:
//                                                           const TextStyle(
//                                                         color: Colors.white,
//                                                         fontSize: 20,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 )
//                                               ],
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 );
//                               },
//                             ),
//                           ),
//                         )
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

