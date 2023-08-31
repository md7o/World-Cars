import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:world_car/models/car.dart';
import 'package:world_car/models/category.dart';

class homeSlider extends StatefulWidget {
  const homeSlider({
    super.key,
  });

  @override
  State<homeSlider> createState() => _homeSliderState();
}

class _homeSliderState extends State<homeSlider> {
  int activeIndex = 0;

  final List<topSeller> TopSeller = [
    const topSeller(
      id: '1',
      title: 'Toyota Corolla',
      sales: '1,012,000 M',
      backgroundImg: "images/ttt.png",
      country: 'Japan',
      countryImg: 'https://cdn-icons-png.flaticon.com/512/197/197604.png',
    ),
    const topSeller(
        id: '2',
        title: 'Toyota RAV4',
        sales: '870,000 K',
        backgroundImg: "images/ttt.png",
        country: 'Japan',
        countryImg: 'https://cdn-icons-png.flaticon.com/512/197/197604.png'),
    const topSeller(
        id: '3',
        title: 'Ford F-Series',
        sales: '790,000 K',
        backgroundImg: "images/ttt.png",
        country: 'America',
        countryImg: 'https://cdn-icons-png.flaticon.com/512/5373/5373324.png'),
    const topSeller(
        id: '4',
        title: 'Tesla Model Y',
        backgroundImg: "images/ttt.png",
        sales: '760,000 K',
        country: 'America',
        countryImg: 'https://cdn-icons-png.flaticon.com/512/5373/5373324.png'),
    const topSeller(
        id: '5',
        title: 'Toyota Camry',
        backgroundImg: "images/ttt.png",
        sales: '680,000 K',
        country: 'Japan',
        countryImg: 'https://cdn-icons-png.flaticon.com/512/197/197604.png'),
    const topSeller(
        id: '6',
        title: 'Honda CR-V',
        backgroundImg: "images/ttt.png",
        sales: '600,000 K',
        country: 'Japan',
        countryImg: 'https://cdn-icons-png.flaticon.com/512/197/197604.png'),
    const topSeller(
        id: '7',
        title: 'Chevro Silverado',
        backgroundImg: "images/ttt.png",
        sales: '590,000 K',
        country: 'America',
        countryImg: 'https://cdn-icons-png.flaticon.com/512/5373/5373324.png'),
    const topSeller(
        id: '8',
        title: 'Hyundai Tucson',
        backgroundImg: "images/ttt.png",
        sales: '570,000 K',
        country: 'Korea',
        countryImg: 'https://cdn-icons-png.flaticon.com/512/5111/5111586.png'),
    const topSeller(
        id: '9',
        title: 'Toyota Hilux',
        backgroundImg: "images/ttt.png",
        sales: '560,000 K',
        country: 'Japan',
        countryImg: 'https://cdn-icons-png.flaticon.com/512/197/197604.png'),
    const topSeller(
        id: '10',
        title: 'Ram Pick-up',
        backgroundImg: "images/ttt.png",
        sales: '550,000 K',
        country: 'America',
        countryImg: 'https://cdn-icons-png.flaticon.com/512/5373/5373324.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Car sales rate in one year',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.bold)),
        SizedBox(
          height: 20,
        ),
        CarouselSlider.builder(
          options: CarouselOptions(
            height: 200,
            enlargeCenterPage: true,
            autoPlayCurve: Curves.easeInOut,
            autoPlayInterval: Duration(seconds: 7),
            autoPlayAnimationDuration: Duration(milliseconds: 2000),
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() => activeIndex = index);
            },
          ),
          itemCount: TopSeller.length,
          itemBuilder: (BuildContext context, int index, int pageViewIndex) {
            return Container(
              color: Colors.transparent,
              width: 300,
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      width: 280,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onBackground,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              TopSeller[index].title,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              TopSeller[index].sales,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 3),
                            ),
                            Row(
                              children: [
                                Text(
                                  TopSeller[index].country,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Image.network(
                                  TopSeller[index].countryImg,
                                  scale: 31,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Theme.of(context).colorScheme.primary,
                            Theme.of(context).colorScheme.secondary,
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        ),
                      ),
                      child: Center(
                          child: Text(
                        TopSeller[index].id,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  Positioned(
                    bottom: -20,
                    left: 80,
                    child: Container(
                      decoration: BoxDecoration(
                          // boxShadow: [
                          //   BoxShadow(
                          //     spreadRadius: 5,
                          //     blurRadius: 6,
                          //   ),
                          // ],
                          ),
                      child: Image.asset(
                        TopSeller[index].backgroundImg,
                        scale: 4,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        SizedBox(
          height: 10,
        ),
        buildIndicator()
      ],
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: TopSeller.length,
        effect: const ScrollingDotsEffect(
          dotWidth: 8,
          dotHeight: 8,
          dotColor: Colors.white,
          activeDotColor: Color(0xFF027FA5),
          activeDotScale: 1,
        ),
      );
}
