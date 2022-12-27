import 'package:flutter/material.dart';
import 'package:world_car/data.dart';
import 'package:world_car/models/world_car.dart';

class FamousCar extends StatelessWidget {
  const FamousCar({super.key});

  @override
  Widget build(BuildContext context) {
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
          // for (final FamousList in Listdata)
          //  for (FamousCar Lists in (FamousList.Listy))
          //   ListView.builder(
          //     itemCount: FamousList.leagth,
          //     itemBuilder: (BuildContext context, int index) {
          //       return Container(
          //         child: Text('data'),
          //       );
          //     },
          //   ),

          // country
        ],
      ),
    );
  }
}
