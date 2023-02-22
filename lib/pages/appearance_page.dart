import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_car/widgets/change_widget.dart';

class DarkMode extends StatefulWidget {
  const DarkMode({super.key});

  @override
  State<DarkMode> createState() => _DarkModeState();
}

class _DarkModeState extends State<DarkMode> {
  bool click = true;

  @override
  Widget build(BuildContext context) {
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
          icon: const Icon(
            Icons.close,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.mode,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Theme:",
                      style: GoogleFonts.josefinSans(
                        color: Colors.white,
                        textStyle: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.normal),
                      ),
                    ),
                  ],
                ),
                const Actions(
                  actions: {},
                  child: ChangeThemeButtonWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
