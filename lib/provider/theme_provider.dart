import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:Car_Wave/models/themedata.dart';

// final appThemeStateNotifer = ChangeNotifierProvider((ref) => AppThemeState());

// class AppThemeState extends ChangeNotifier {
//   var isDarkModeEnable = false;
//   void setLightTheme() {
//     isDarkModeEnable = false;
//     notifyListeners();
//   }

//   void setDarkTheme() {
//     isDarkModeEnable = true;
//     notifyListeners();
//   }
// }

class DarkModeNotifier extends StateNotifier<bool> {
  DarkModeNotifier() : super(false);

  void toggle() {
    state = !state;
  }
}

final darkModeProvider = StateNotifierProvider<DarkModeNotifier, bool>(
  (ref) => DarkModeNotifier(),
);
