import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class modeWidget extends StatelessWidget {
  const modeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFF1A2037),
        borderRadius: BorderRadius.all(
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
    );
  }
}

class fontWidget extends StatelessWidget {
  const fontWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFF1A2037),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            const Icon(
              Icons.text_fields,
              color: Colors.white,
              size: 25,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Fonts',
              style: GoogleFonts.josefinSans(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.normal),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 175),
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

class sourcesWidget extends StatelessWidget {
  const sourcesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFF1A2037),
        borderRadius: BorderRadius.all(
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
    );
  }
}

class contantWidget extends StatelessWidget {
  const contantWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFF1A2037),
        borderRadius: BorderRadius.all(
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
      decoration: const BoxDecoration(
        color: Color(0xFF1A2037),
        borderRadius: BorderRadius.all(
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
