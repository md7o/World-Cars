import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import '../widgets/setting_widget.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: new Text(
            'Setting',
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
                          await Share.share(
                              'World Cars includes many famous cars from 4 countries, America - Japan - Germany - South Korea. https://play.google.com/store/apps/details?id=com.world.cars.worldcars');
                        },
                        child: const shareWidget()),
                  ],
                ),
              ),
            ),
          ),
          //  Last General code
        ],
      ),
    );
  }
}
