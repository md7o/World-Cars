import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:world_car/provider/theme_provider.dart';
import 'package:world_car/widgets/change_widget.dart';

class ThemeModePage extends ConsumerStatefulWidget {
  const ThemeModePage({super.key});

  @override
  ConsumerState<ThemeModePage> createState() => _ThemeModePageState();
}

class _ThemeModePageState extends ConsumerState<ThemeModePage> {
  bool isPressed = false;

  void onPressed() {
    setState(() {
      isPressed = !isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    var darkMode = ref.watch(darkModeProvider);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.primary,
            Theme.of(context).colorScheme.secondary,
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Opacity(
              opacity: 0.4,
              child: Container(
                width: 30,
                height: 3,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Theme",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        darkMode ? Icons.sunny : Icons.nightlight,
                        color: Colors.white,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        darkMode ? "Light Mode" : "Dark Mode",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontWeight: FontWeight.bold),
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
          ],
        ),
      ),
    );
  }
}
