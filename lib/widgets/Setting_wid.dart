// ignore_for_file: file_names, camel_case_types, unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_car/pages/connecting.dart';
import 'package:world_car/pages/Sources.dart';
import '../pages/dark_mode.dart';

class modeWidget extends StatelessWidget {
  const modeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'darkTheme'
        : 'LightTheme';
    return InkWell(
      onTap: () => Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return DarkMode();
          },
          transitionDuration: const Duration(milliseconds: 700),
          transitionsBuilder: (context, animation, animationTime, child) {
            const begin = Offset(0, 1);
            const end = Offset.zero;
            const curve = Curves.easeOutCubic;
            var tween = Tween(begin: begin, end: end).chain(
              CurveTween(curve: curve),
            );
            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        ),
      ),
      child: Container(
        height: 45,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              const Icon(
                Icons.dark_mode,
                color: Colors.white,
                size: 25,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Dark mode',
                style: GoogleFonts.josefinSans(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 125),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class sourcesWidget extends StatelessWidget {
  const sourcesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return Sources();
          },
          transitionDuration: const Duration(milliseconds: 700),
          transitionsBuilder: (context, animation, animationTime, child) {
            const begin = Offset(0, 1);
            const end = Offset.zero;
            const curve = Curves.easeOutCubic;
            var tween = Tween(begin: begin, end: end).chain(
              CurveTween(curve: curve),
            );
            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        ),
      ),
      child: Container(
        height: 45,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              const Icon(
                Icons.library_books,
                color: Colors.white,
                size: 25,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Sources',
                style: GoogleFonts.josefinSans(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 155),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class contantWidget extends StatelessWidget {
  const contantWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return Connection();
          },
          transitionDuration: const Duration(milliseconds: 700),
          transitionsBuilder: (context, animation, animationTime, child) {
            const begin = Offset(0, 1);
            const end = Offset.zero;
            const curve = Curves.easeOutCubic;
            var tween = Tween(begin: begin, end: end).chain(
              CurveTween(curve: curve),
            );
            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        ),
      ),
      child: Container(
        height: 45,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              const Icon(
                Icons.phone,
                color: Colors.white,
                size: 25,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Connect with us',
                style: GoogleFonts.josefinSans(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 80),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class shareWidget extends StatelessWidget {
  const shareWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            const Icon(
              Icons.share,
              color: Colors.white,
              size: 25,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Share the app',
              style: GoogleFonts.josefinSans(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.normal),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 95),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
                size: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
