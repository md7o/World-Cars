import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:provider/provider.dart';
import 'package:world_car/models/themedata.dart';

class ChangeThemeButtonWidget extends StatelessWidget {
  const ChangeThemeButtonWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return LiteRollingSwitch(
      value: themeProvider.isDarkMode,
      textOn: 'Dark ',
      textOff: 'Light',
      textOnColor: Colors.white,
      colorOn: Color(0xFF1A2037),
      colorOff: Color(0xFF8097F1),
      iconOn: Icons.dark_mode_outlined,
      iconOff: Icons.wb_sunny_outlined,
      textSize: 16.0,
      onChanged: (value) {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(value);
      },
      onDoubleTap: (value) {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(value);
      },
      onSwipe: (value) {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(value);
      },
      onTap: (value) {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(value);
      },
    );
  }
}
