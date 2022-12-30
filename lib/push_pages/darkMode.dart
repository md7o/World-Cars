import 'package:flutter/material.dart';

import 'package:world_car/widget/change.dart';

class DarkMode extends StatefulWidget {
  const DarkMode({super.key});

  @override
  State<DarkMode> createState() => _DarkModeState();
}

class _DarkModeState extends State<DarkMode> {
  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'darkTheme'
        : 'LightTheme';
    return Scaffold(
        appBar: AppBar(
          actions: [
            ChangeThemeButtonWidget(),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: const [
              Text('hlao'),
            ],
          ),
        ));
  }
}
