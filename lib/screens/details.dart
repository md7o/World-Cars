import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_car/models/world_car.dart';

class Details_car extends StatelessWidget {
  const Details_car({
    super.key,
    required this.detail,
    required this.carItem,
  });

  final List<Details> detail;
  final List<Cars> carItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Soureces',
          style: GoogleFonts.josefinSans(
            color: Theme.of(context).iconTheme.color,
            textStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
          ),
        ),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 35,
        leading: IconButton(
            color: Theme.of(context).iconTheme.color,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            child: Stack(
              children: [
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(carItem[0].carImage, fit: BoxFit.cover),
                  ),
                ),
                Container(
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              carItem[0].carName,
              style: GoogleFonts.josefinSans(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
          SizedBox(
            height: 350,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: detail.length,
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 3),
                      child: Column(
                        children: [
                          Container(
                            height: 82,
                            width: 199,
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Image.asset(
                                          detail[index].detailPhoto,
                                          width: 50,
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            detail[index].detailName,
                                            style: GoogleFonts.josefinSans(
                                              textStyle: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Text(
                                              detail[index].detailInfo,
                                              style: GoogleFonts.josefinSans(
                                                textStyle: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.normal),
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
