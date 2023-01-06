import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_car/models/world_car.dart';
import 'package:world_car/screens/details.dart';

class brand_cars extends StatelessWidget {
  const brand_cars({
    super.key,
    required this.item,
    required this.carItem,
    required this.detail,
  });

  final WorldCar item;
  final List<Cars> carItem;
  final List<Details> detail;

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
                  item.name,
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
              physics: const BouncingScrollPhysics(),
              itemCount: carItem.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(carItem[index].carImage,
                              fit: BoxFit.cover),
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Details_car(
                              detail: carItem[index].details,
                            ),
                          ),
                        ),
                        child: Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
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

                          // color: Theme.of(context).primaryColor,
                          // borderRadius: const BorderRadius.vertical(
                          //     bottom: Radius.elliptical(200, 100))

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 30, horizontal: 10),
                                child: Text(
                                  carItem[index].carName,
                                  style: GoogleFonts.josefinSans(
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
