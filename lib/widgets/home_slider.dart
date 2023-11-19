import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:Car_Wave/models/car.dart';
import 'package:Car_Wave/models/category.dart';

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
      backgroundImg:
          "https://mystrongad.com/MLT_PalestineToyota/Interactive/Corolla/2023/23-Toyota-Corolla-White.webp",
      country: 'Japan',
      countryImg: 'https://cdn-icons-png.flaticon.com/512/197/197604.png',
    ),
    const topSeller(
        id: '2',
        title: 'Toyota RAV4',
        sales: '870,000 K',
        backgroundImg:
            "https://s3.amazonaws.com/toyota.site.toyota-v5/tci-prod/toyota/media/build/rav/col/big/b23_b1rfv_fl1_0218_a.png?ck=09082023052311",
        country: 'Japan',
        countryImg: 'https://cdn-icons-png.flaticon.com/512/197/197604.png'),
    const topSeller(
        id: '3',
        title: 'Ford F-Series',
        sales: '790,000 K',
        backgroundImg:
            "https://storage.googleapis.com/rp-production-public-content/0tl7u6n4s3agm9q3p5kpv2oftt96",
        country: 'America',
        countryImg: 'https://cdn-icons-png.flaticon.com/512/5373/5373324.png'),
    const topSeller(
        id: '4',
        title: 'Tesla Model Y',
        backgroundImg:
            "https://crdms.images.consumerreports.org/c_lfill,w_470,q_auto,f_auto/prod/cars/cr/car-versions/14623-2020-tesla-model-y-long-range",
        sales: '760,000 K',
        country: 'America',
        countryImg: 'https://cdn-icons-png.flaticon.com/512/5373/5373324.png'),
    const topSeller(
        id: '5',
        title: 'Toyota Camry',
        backgroundImg:
            "https://www.motortrend.com/uploads/sites/10/2018/09/2019-toyota-camry-se-auto-sedan-angular-front.png",
        sales: '680,000 K',
        country: 'Japan',
        countryImg: 'https://cdn-icons-png.flaticon.com/512/197/197604.png'),
    const topSeller(
        id: '6',
        title: 'Honda CR-V',
        backgroundImg:
            "https://mystrongad.com/BLH_BobLindsayHonda/Interactive_/CR-V/2022/CR-V/22-Honda-CR-V-2WD-EX-Black-Driver-Silver-SM.png",
        sales: '600,000 K',
        country: 'Japan',
        countryImg: 'https://cdn-icons-png.flaticon.com/512/197/197604.png'),
    const topSeller(
        id: '7',
        title: 'Chevro Silverado',
        backgroundImg:
            "https://d2ivfcfbdvj3sm.cloudfront.net/7fc965ab77efe6e0fa62e4ca1ea7673bb25e46560b1e3d8e88cb10/stills_0640_png/MY2021/14770/14770_st0640_116.png",
        sales: '590,000 K',
        country: 'America',
        countryImg: 'https://cdn-icons-png.flaticon.com/512/5373/5373324.png'),
    const topSeller(
        id: '8',
        title: 'Hyundai Tucson',
        backgroundImg:
            "https://www.motortrend.com/uploads/sites/10/2019/01/2019-hyundai-tucson-sel-suv-angular-front.png",
        sales: '570,000 K',
        country: 'Korea',
        countryImg: 'https://cdn-icons-png.flaticon.com/512/5111/5111586.png'),
    const topSeller(
        id: '9',
        title: 'Toyota Hilux',
        backgroundImg:
            "https://i0.wp.com/hsmmotors.com/wp-content/uploads/2022/08/Toyota-Hilux-rocco-cover.png?fit=800%2C378&ssl=1",
        sales: '560,000 K',
        country: 'Japan',
        countryImg: 'https://cdn-icons-png.flaticon.com/512/197/197604.png'),
    const topSeller(
        id: '10',
        title: 'Ram Pick-up',
        backgroundImg:
            "https://medias.fcacanada.ca/jellies/renditions/2022/800x510/CC22_DT6S98_2TY_PSC_APA_QXJ_XXX_XXX.e8ffecc34b31493951f2b9a319cb4867.png",
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
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 2000),
            autoPlay: false,
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
                                  .headlineMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
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
                                const SizedBox(
                                  width: 5,
                                ),
                                CachedNetworkImage(
                                  imageUrl: TopSeller[index].countryImg,
                                  width: 15,
                                  height: 15,
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
                      decoration: const BoxDecoration(
                          // boxShadow: [
                          //   BoxShadow(
                          //     spreadRadius: 5,
                          //     blurRadius: 6,
                          //   ),
                          // ],
                          ),
                      child: CachedNetworkImage(
                        imageUrl: TopSeller[index].backgroundImg,
                        width: 220,
                        height: 150,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        const SizedBox(
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
