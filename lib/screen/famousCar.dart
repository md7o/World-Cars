import 'package:flutter/material.dart';
import 'package:world_car/models/world_car.dart';

class FamousCar extends StatelessWidget {
  const FamousCar({super.key});

  @override
  Widget build(BuildContext context) {
    final List<popularsCar> popular = [
      const popularsCar(
          title: 'Toyota Corolla', backgroundImg: "images/Corolla.png"),
      const popularsCar(title: 'Toyota R', backgroundImg: "images/RAV4.png"),
      const popularsCar(title: 'hlao', backgroundImg: "images/Crv.png"),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF11101C),

      // Body

      body: Column(
        children: [
          // AppBar

          Container(
              height: 175.0,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(0xFF1A2037),
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(200, 100))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Image.asset(
                      "images/earth.png",
                      width: 80,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Car World',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )),

          // AppBar
          // ignore: non_constant_identifier_names

          Expanded(
            child: ListView(
                children: popular.map(
              (po) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(po.backgroundImg),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Text(
                            po.title,
                            style: const TextStyle(
                              backgroundColor: Colors.black12,
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ).toList()),
          ),

          // country
        ],
      ),
    );
  }
}
