import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:world_car/models/category.dart';
import 'package:world_car/screens/car_details.dart';
import 'package:world_car/screens/compared.dart';

import '../models/car.dart';

class CarsGroups extends StatelessWidget {
  const CarsGroups({
    super.key,
    required this.cars,
    required this.categoryT,
    required this.assortment,
  });

  final CategoryT categoryT;
  final Car cars;
  final List<Assortment> assortment;

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
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FadeInImage(
                        placeholder: MemoryImage(kTransparentImage),
                        image: AssetImage(cars.imgAssets),
                        fit: BoxFit.cover,
                        height: 35,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        cars.title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Scrollbar(
                    thickness: 2,
                    radius: Radius.circular(50),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: assortment.length,
                        itemBuilder: (ctx, index) => Column(
                          children: [
                            InkWell(
                              splashFactory: NoSplash.splashFactory,
                              highlightColor: Colors.transparent,
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (ctx) => CarDetails(
                                      // cars: cars,
                                      assortment: assortment[index],
                                      details: assortment[index].details,
                                    ),
                                  ),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                assortment[index].carImage,
                                            placeholder: (context, url) =>
                                                Center(
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
                                            errorWidget:
                                                (context, url, error) =>
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
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                          ),
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
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 20,
                                                      horizontal: 10),
                                              child: Text(
                                                assortment[index].carName,
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                textAlign: TextAlign.left,
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: content,
    );
  }
}
