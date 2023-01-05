// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';

import '../widgets/Setting_wid.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'darkTheme'
        : 'LightTheme';
    return Scaffold(
      // Body

      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Text(
                'Setting',
                style: GoogleFonts.josefinSans(
                  color: Theme.of(context).iconTheme.color,
                  textStyle: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.normal),
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
                    color: Theme.of(context).iconTheme.color,
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      //  Dark mode
                      const modeWidget(),
                      //  Dark mode

                      const Divider(
                        indent: 30,
                        endIndent: 30,
                        thickness: 1,
                        color: Color(0x73FFFFFF),
                      ),

                      const sourcesWidget(),

                      const Divider(
                        indent: 30,
                        endIndent: 30,
                        thickness: 1,
                        color: Color(0x73FFFFFF),
                      ),

                      const contantWidget(),

                      const Divider(
                        indent: 30,
                        endIndent: 30,
                        thickness: 1,
                        color: Color(0x73FFFFFF),
                      ),

                      InkWell(
                          onTap: () async {
                            await Share.share('Omk 3nde');
                          },
                          child: const shareWidget()),
                    ],
                  ),
                )),
          ),
          //  Last General code
        ],
      ),

      // bottomNavigationBar: const naviBar(),
    );
  }
}
