import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_car/models/world_car.dart';

class FamousCar extends StatelessWidget {
  const FamousCar({super.key});

  @override
  Widget build(BuildContext context) {
    final List<popularsCar> popular = [
      const popularsCar(
        title: '1- Toyota Corolla',
        backgroundImg: "images/Corolla.png",
        selling: '1.1M 👤',
      ),
      const popularsCar(
        title: '2- Toyota RAV4',
        backgroundImg: "images/RAV4.png",
        selling: '1M 👤',
      ),
      const popularsCar(
        title: '3- Ford F-Series',
        backgroundImg: "images/Ford_F.png",
        selling: '860K 👤',
      ),
      const popularsCar(
        title: '4- Honda CR-V',
        backgroundImg: "images/CRV.png",
        selling: '730K 👤',
      ),
      const popularsCar(
        title: '5- Toyota Camry',
        backgroundImg: "images/Camry.png",
        selling: '690K 👤',
      ),
      const popularsCar(
        title: '6- Ram Pick-up',
        backgroundImg: "images/Ram.png",
        selling: '650K 👤',
      ),
      const popularsCar(
        title: '7- Toyota Yaris',
        backgroundImg: "images/Yaris.png",
        selling: '590K 👤',
      ),
      const popularsCar(
        title: '8- Honda Civic',
        backgroundImg: "images/Civic.png",
        selling: '590K 👤',
      ),
      const popularsCar(
        title: '9- Chevrolet Silverado',
        backgroundImg: "images/Silverado.png",
        selling: '580K 👤',
      ),
      const popularsCar(
        title: '10- Tesla Model 3',
        backgroundImg: "images/Tesla.png",
        selling: '580K 👤',
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF11101C),

      // Body

      body: Column(
        children: [
          // AppBar

          // AppBar
          // ignore: non_constant_identifier_names

          Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 60, bottom: 30, left: 30, right: 30),
                child: Text('Best selling cars worldwide in (2021)',
                    style: GoogleFonts.josefinSans(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.normal),
                    ),
                    textAlign: TextAlign.center),
              ),
            ],
          ),

          Expanded(
            child: ListView(
                physics: const BouncingScrollPhysics(),
                children: popular.map(
                  (po) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          right: 20, left: 20, bottom: 50),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(po.backgroundImg,
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Container(
                            height: 200,
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
                                  Colors.black.withOpacity(0.7),
                                  Colors.transparent
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    child: Text(
                                      po.title,
                                      style: GoogleFonts.josefinSans(
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 200,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                (BorderRadius.circular(10)),
                                            color: Colors.green.shade500),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          po.selling,
                                          style: GoogleFonts.josefinSans(
                                            textStyle: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
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
