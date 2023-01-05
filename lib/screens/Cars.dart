import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_car/models/world_car.dart';

class Cars extends StatelessWidget {
  const Cars({
    super.key,
    required this.item,
    // required this.label,
    // required this.img,
  });

  final WorldCar item;
  // final String label;
  // final String img;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //  ==============================================================

          Container(
            height: 175.0,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.vertical(
                    bottom: Radius.elliptical(200, 100))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Image.asset(
                    item.imageUrl,
                    width: 80,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Volkswagen',
                  style: GoogleFonts.josefinSans(
                    color: Colors.white,
                    textStyle: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.normal),
                  ),
                )
              ],
            ),
          ),

          //  ===============================================================

          SizedBox(
            height: 600,
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  child: Container(
                    height: 175.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      // borderRadius: const BorderRadius.vertical(
                      //     bottom: Radius.elliptical(200, 100))
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Image.asset(
                            'images/volks.png',
                            width: 80,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'hlao',
                          style: GoogleFonts.josefinSans(
                            color: Colors.white,
                            textStyle: const TextStyle(
                                fontSize: 22, fontWeight: FontWeight.normal),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
