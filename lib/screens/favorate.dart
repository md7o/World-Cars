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
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            'Try selecting a diffrent category!',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
        ],
      ),
    );

    if (assortment.isNotEmpty) {
      FavoContent = ListView.builder(
        itemCount: assortment.length,
        itemBuilder: (ctx, index) => Card(
          margin: const EdgeInsets.all(8),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          clipBehavior: Clip.hardEdge,
          elevation: 2,
          child: InkWell(
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
            child: Column(
              children: [
                Stack(
                  children: [
                    FadeInImage(
                      placeholder: MemoryImage(kTransparentImage),
                      image: NetworkImage(assortment[index].carImage),
                      fit: BoxFit.cover,
                      height: 200,
                      width: double.infinity,
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        color: Colors.black54,
                        padding: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 44),
                        child: Column(
                          children: [
                            Text(
                              assortment[index].carName,
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(appBar: AppBar(), body: FavoContent);
  }
}
