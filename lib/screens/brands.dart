import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:world_car/widgets/brands_item.dart';
import '../models/car.dart';
import '../models/category.dart';
import '../widgets/brands_facts.dart';
import 'car_groups.dart';

class Brands extends StatelessWidget {
  const Brands({
    super.key,
    this.title,
    this.cityLogo,
    required this.cars,
    required this.categoryT,
  });

  final String? title;
  final CategoryC categoryT;
  final String? cityLogo;
  final List<Car> cars;

  // void _SelectCar(
  //   BuildContext context,
  //   Car car,
  // ) {
  //   Navigator.of(context).push(
  //     MaterialPageRoute(
  //       builder: (ctx) => CarsGroups(
  //         categoryT: categoryT,
  //         cars: car,
  //         definition: cars.definition[index],
  //       ),
  //     ),
  //   );
  // }

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
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 80,
                  ),
                  child: Row(
                    children: [
                      Opacity(
                        opacity: 1,
                        child: FadeInImage(
                          placeholder: MemoryImage(kTransparentImage),
                          image: NetworkImage(categoryT.cityLogo),
                          fit: BoxFit.cover,
                          height: 30,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        categoryT.cityName,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 150,
                  child: Scrollbar(
                    thickness: 2,
                    radius: Radius.circular(50),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: cars.length,
                        itemBuilder: (ctx, index) => Column(
                          children: [
                            BrandsItem(
                              car: cars[index],
                              cityName: categoryT.cityName,
                              cityLogo: categoryT.cityLogo,
                              onSelectBrand: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (ctx) => CarsGroups(
                                      categoryT: categoryT,
                                      cars: cars[index],
                                      // assortment: cars[index].assortment,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                BrandFacts(
                  categoryT: categoryT,
                )
              ],
            ),
          ),
        ),
      ],
    );

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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: content,
      ),
    );
  }
}
