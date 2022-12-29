import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/Setting_wid.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF11101C),

      // Body

      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Text(
                'Setting',
                style: GoogleFonts.josefinSans(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.normal),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'General',
                  style: GoogleFonts.josefinSans(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFF1A2037),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Column(
                  children: const [
                    //  Dark mode
                    modeWidget(),
                    //  Dark mode

                    Divider(
                      indent: 30,
                      endIndent: 30,
                      thickness: 1,
                      color: Colors.white,
                    ),

                    //  Fonts
                    fontWidget(),
                    //  Fonts
                  ],
                )),
          ),
          //  Last General code

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 50),
                child: Text(
                  'General',
                  style: GoogleFonts.josefinSans(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFF1A2037),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Column(
                  children: const [
                    //  Dark mode
                    sourcesWidget(),
                    //  Dark mode

                    Divider(
                      indent: 30,
                      endIndent: 30,
                      thickness: 1,
                      color: Colors.white,
                    ),

                    //  Fonts
                    contantWidget(),
                    Divider(
                      indent: 30,
                      endIndent: 30,
                      thickness: 1,
                      color: Colors.white,
                    ),
                    shareWidget(),
                    //  Fonts
                  ],
                )),
          ),
        ],
      ),

      // bottomNavigationBar: const naviBar(),
    );
  }
}
