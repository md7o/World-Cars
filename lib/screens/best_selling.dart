// ignore_for_file: file_names, unused_local_variable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_car/models/world_car.dart';

class BestSelling extends StatelessWidget {
  const BestSelling({super.key});

  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'darkTheme'
        : 'LightTheme';
    final List<PopularsCar> popular = [
      const PopularsCar(
        title: '1- Toyota Corolla',
        backgroundImg:
            "https://media.ed.edmunds-media.com/toyota/corolla/2023/oem/2023_toyota_corolla_sedan_xse_fq_oem_1_815.jpg",
        selling: '1.12M',
      ),
      const PopularsCar(
        title: '2- Toyota RAV4',
        backgroundImg:
            "https://media.ed.edmunds-media.com/toyota/rav4/2022/oem/2022_toyota_rav4_4dr-suv_adventure_fq_oem_3_1280x855.jpg",
        selling: '870K',
      ),
      const PopularsCar(
        title: '3- Ford F-Series',
        backgroundImg:
            "https://storage.googleapis.com/carmuv-development.appspot.com/1/2021/08/Ford-F-150-9.jpg",
        selling: '790K',
      ),
      const PopularsCar(
        title: '4- Tesla Model Y',
        backgroundImg:
            "https://hips.hearstapps.com/hmg-prod/images/tesla-model-y-with-powerline-royalty-free-image-1673730340.jpg?crop=0.832xw:0.569xh;0.0697xw,0.414xh&resize=1200:*",
        selling: '760K',
      ),
      const PopularsCar(
        title: '5- Toyota Camry',
        backgroundImg:
            "https://media.ed.edmunds-media.com/toyota/camry/2021/oem/2021_toyota_camry_sedan_xse_fq_oem_1_1280x855.jpg",
        selling: '680K',
      ),
      const PopularsCar(
        title: '6- Honda CR-V',
        backgroundImg:
            "https://media.ed.edmunds-media.com/honda/cr-v/2023/oem/2023_honda_cr-v_4dr-suv_ex-l_fq_oem_1_1280x855.jpg",
        selling: '600K',
      ),
      const PopularsCar(
        title: '7- Chevrolet Silverado',
        backgroundImg:
            "https://media.ed.edmunds-media.com/chevrolet/silverado-1500/2022/oem/2022_chevrolet_silverado-1500_crew-cab-pickup_high-country_fq_oem_1_1280x855.jpg",
        selling: '590K',
      ),
      const PopularsCar(
        title: '8- Hyundai Tucson',
        backgroundImg:
            "https://media.ed.edmunds-media.com/hyundai/tucson/2022/oem/2022_hyundai_tucson_4dr-suv_n-line_fq_oem_2_1280x855.jpg",
        selling: '570K',
      ),
      const PopularsCar(
        title: '9- Toyota Hilux',
        backgroundImg:
            "https://girodosmotores.com/wp-content/uploads/2022/02/toyota-libera-seu-novo-projeto-para-a-hilux-2023-capa.jpg",
        selling: '560K',
      ),
      const PopularsCar(
        title: '10- Ram Pick-up',
        backgroundImg:
            "https://dealerinspire-image-library-prod.s3.us-east-1.amazonaws.com/images/Up47cfGn1Q2uYww9kqDdjX2McJJNyy29nw1CSaPE.",
        selling: '550K',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: new Text(
            'Top selling cars',
            style: GoogleFonts.comfortaa(
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 100,
      ),
      body: Column(
        children: [
          Expanded(
            child: Scrollbar(
              child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: popular.map(
                    (po) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            right: 40, left: 40, bottom: 40),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: CachedNetworkImage(
                                  imageUrl: po.backgroundImg,
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) => Center(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 40),
                                      child: Container(
                                        color: Colors.transparent,
                                        height: 100,
                                        width: 100,
                                        child: const CircularProgressIndicator(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 180,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
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
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        po.title,
                                        style: GoogleFonts.comfortaa(
                                          textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 180,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                (const BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                              topLeft: Radius.circular(10),
                                            )),
                                            color: Colors.green.shade500,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            po.selling,
                                            style: GoogleFonts.comfortaa(
                                              textStyle: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
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
          ),
        ],
      ),
    );
  }
}
