import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:world_car/pages/theme_mode_page.dart';
import '../widgets/setting_widget.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.background,
            Theme.of(context).colorScheme.onBackground,
            Theme.of(context).colorScheme.tertiary,
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Center(
            child: new Text(
              'Setting',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 100,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).colorScheme.secondary,
                    ],
                    begin: Alignment.bottomRight,
                    end: Alignment.topCenter,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Column(
                    children: [
                      //  Dark mode
                      const themeOption(),
                      SizedBox(height: 25),
                      const sourcesWidget(),
                      SizedBox(height: 25),
                      const contantWidget(),
                      SizedBox(height: 25),

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
      ),
    );
  }
}
