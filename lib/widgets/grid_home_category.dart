import 'package:flutter/material.dart';
import 'package:world_car/models/category.dart';

class GridHomeCategory extends StatelessWidget {
  const GridHomeCategory({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                category.img,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 160,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.black.withOpacity(0.7), Colors.transparent],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                category.label,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );

    //   Container(
    //     padding: const EdgeInsets.all(16),
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(16),
    //     ),
    //     child: Text(
    //       category.label,
    //       style: Theme.of(context).textTheme.titleLarge!.copyWith(
    //             color: Theme.of(context).colorScheme.onBackground,
    //           ),
    //     ),
    //   ),
    // );
  }
}
