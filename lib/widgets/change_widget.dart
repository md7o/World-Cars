import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:world_car/models/themedata.dart';
import 'package:world_car/provider/theme_provider.dart';

class ChangeThemeButtonWidget extends ConsumerWidget {
  const ChangeThemeButtonWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var darkMode = ref.watch(darkModeProvider);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Switch(
            activeColor: Colors.amber,
            inactiveThumbColor: Colors.white,
            value: darkMode,
            onChanged: (val) {
              ref.read(darkModeProvider.notifier).toggle();
            },
          ),
        ],
      ),
    );
  }
}
