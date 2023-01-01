import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

import 'package:world_car/widget/change.dart';

class DarkMode extends StatefulWidget {
  const DarkMode({super.key});

  @override
  State<DarkMode> createState() => _DarkModeState();
}

class _DarkModeState extends State<DarkMode> {
  bool click = true;

  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'darkTheme'
        : 'LightTheme';
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'appearance',
            style: GoogleFonts.josefinSans(
              color: Theme.of(context).iconTheme.color,
              textStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
          ),
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
              color: Theme.of(context).iconTheme.color,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close)),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Text(
                "Chose Mode:",
                style: GoogleFonts.josefinSans(
                  color: Theme.of(context).iconTheme.color,
                  textStyle: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.normal),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              const Center(
                child: Actions(
                  actions: {},
                  child: ChangeThemeButtonWidget(),
                ),
              ),
            ],
          ),
        ));
  }
}
