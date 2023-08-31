import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:world_car/models/car.dart';
import 'package:world_car/screens/car_details.dart';
import 'package:world_car/screens/compared.dart';

class Favorite extends StatelessWidget {
  const Favorite({
    super.key,
    required this.assortment,
  });

  final List<Assortment> assortment;

  @override
  Widget build(BuildContext context) {
    Widget FavoContent = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Uh oh ... nothing here!',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(),
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            'Try selecting a diffrent category!',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(),
          ),
        ],
      ),
    );

    if (assortment.isNotEmpty) {
      FavoContent = Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
              child: Text(
                'Favorite Cars',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: Scrollbar(
              thickness: 3,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: assortment.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                          InkWell(
                            splashFactory: NoSplash.splashFactory,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (ctx) => CarDetails(
                                    assortment: assortment[index],
                                    details: assortment[index].details,
                                  ),
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 50),
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
                                        borderRadius: BorderRadius.circular(20),
                                        child: CachedNetworkImage(
                                          imageUrl: assortment[index].carImage,
                                          placeholder: (context, url) => Center(
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
                                          errorWidget: (context, url, error) =>
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
                                      height: 180,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        gradient: LinearGradient(
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                          colors: [
                                            Colors.black.withOpacity(0.8),
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
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 10),
                                            child: Text(
                                              assortment[index].carName,
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                              ),
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
                        ]),
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      );
    }

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.background,
            Theme.of(context).colorScheme.onBackground,
            Theme.of(context).colorScheme.tertiary,
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: FavoContent,
      ),
    );
  }
}
