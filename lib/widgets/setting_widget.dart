import 'package:flutter/material.dart';
import 'package:world_car/pages/theme_mode_page.dart';
import 'package:world_car/pages/connecting_page.dart';
import 'package:world_car/pages/sources_page.dart';

class themeOption extends StatefulWidget {
  const themeOption({super.key});

  @override
  State<themeOption> createState() => _themeOptionState();
}

class _themeOptionState extends State<themeOption>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  initState() {
    super.initState();

    controller = BottomSheet.createAnimationController(this);

    // Animation duration for displaying the BottomSheet
    controller.duration = const Duration(milliseconds: 600);

    // Animation duration for retracting the BottomSheet
    controller.reverseDuration = const Duration(milliseconds: 300);
    // Set animation curve duration for the BottomSheet
    controller.drive(CurveTween(curve: Curves.easeIn));
  }

  void _openSettingContent() {
    showModalBottomSheet(
        transitionAnimationController: controller,
        context: context,
        backgroundColor: Colors.transparent,
        elevation: 0,
        isScrollControlled: true,
        builder: (context) {
          return FractionallySizedBox(
            heightFactor: 0.4,
            child: ThemeModePage(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _openSettingContent,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.sunny,
                      color: Colors.white,
                      size: 25,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Theme',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  size: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class sourcesWidget extends StatefulWidget {
  const sourcesWidget({super.key});

  @override
  State<sourcesWidget> createState() => _sourcesWidgetState();
}

class _sourcesWidgetState extends State<sourcesWidget>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  initState() {
    super.initState();

    controller = BottomSheet.createAnimationController(this);

    // Animation duration for displaying the BottomSheet
    controller.duration = const Duration(milliseconds: 600);

    // Animation duration for retracting the BottomSheet
    controller.reverseDuration = const Duration(milliseconds: 300);
    // Set animation curve duration for the BottomSheet
    controller.drive(CurveTween(curve: Curves.easeIn));
  }

  void _openSettingContent() {
    showModalBottomSheet(
        transitionAnimationController: controller,
        context: context,
        backgroundColor: Colors.transparent,
        elevation: 0,
        isScrollControlled: true,
        builder: (context) {
          return FractionallySizedBox(
            heightFactor: 0.4,
            child: sourcesPage(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _openSettingContent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.source_rounded,
                  color: Colors.white,
                  size: 25,
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  'Sources',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class contantWidget extends StatefulWidget {
  const contantWidget({super.key});

  @override
  State<contantWidget> createState() => _contantWidgetState();
}

class _contantWidgetState extends State<contantWidget>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  initState() {
    super.initState();

    controller = BottomSheet.createAnimationController(this);

    // Animation duration for displaying the BottomSheet
    controller.duration = const Duration(milliseconds: 600);

    // Animation duration for retracting the BottomSheet
    controller.reverseDuration = const Duration(milliseconds: 300);

    // Set animation curve duration for the BottomSheet
    controller.drive(CurveTween(curve: Curves.easeIn));
  }

  void _openSettingContent() {
    showModalBottomSheet(
        transitionAnimationController: controller,
        context: context,
        backgroundColor: Colors.transparent,
        elevation: 0,
        isScrollControlled: true,
        builder: (context) {
          return FractionallySizedBox(
            heightFactor: 0.4,
            child: connectionPage(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _openSettingContent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.phone_android_rounded,
                  color: Colors.white,
                  size: 25,
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  'Social media',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class shareWidget extends StatelessWidget {
  const shareWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.share,
                color: Colors.white,
                size: 25,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                'Share the app',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.white,
            size: 20,
          ),
        ],
      ),
    );
  }
}
