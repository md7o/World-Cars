import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:world_car/provider/favorites_provider.dart';
import 'package:world_car/screens/compared.dart';

import '../models/car.dart';

class CarDetails extends ConsumerStatefulWidget {
  const CarDetails({
    super.key,
    // required this.cars,
    required this.assortment,
    required this.details,
  });

  // final Car cars;
  final Assortment assortment;
  final List<Details> details;

  @override
  ConsumerState<CarDetails> createState() => _CarDetailsState();
}

class _CarDetailsState extends ConsumerState<CarDetails> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final favoriteMeals = ref.watch(favoriteAssortmentProvider);

    final isFavorite = favoriteMeals.contains(widget.assortment);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 30,
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  final wasAdded = ref
                      .read(favoriteAssortmentProvider.notifier)
                      .toggleAssortmentFavoriteStatus(widget.assortment);
                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(wasAdded
                          ? 'Meal added as a favorite'
                          : 'Meal removed.')));
                },
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  key: ValueKey(isFavorite),
                ),
              ),
              //  ============================================
              //  ============================================
              //  ============================================

              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => Compared(
                        assortment: widget.assortment,
                      ),
                    ),
                  );
                },
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.amber,
                  child: Text('press button'),
                ),
              ),
              //  ============================================
              //  ============================================
              //  ============================================
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Expanded(
              child: Scrollbar(
                thickness: 3,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    CarouselSlider.builder(
                      options: CarouselOptions(
                        height: MediaQuery.of(context).size.height / 4.5,
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
                                  imageUrl: widget
                                      .assortment.slideAblum[index].sliding,
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) => Center(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 40),
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
                              height: MediaQuery.of(context).size.height / 4.5,
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
                    Center(
                      child: buildIndicator(),
                    ),
                    const SizedBox(
                      height: 10,
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
                      textAlign: TextAlign.center,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
            ),
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
