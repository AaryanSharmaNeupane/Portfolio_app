import 'package:flutter/material.dart';
import 'package:portfolio/widgets/build_headings.dart';

import '../widgets/build_playlist.dart';
import '../widgets/contact.dart';
import '../widgets/languages.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  Widget buildQrCard(qr) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: SizedBox(
          height: 100,
          width: 100,
          child: Image.asset(
            qr,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Center(
                child: Text(
                  "Hello there, Welcome to Aaryan's World!",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Image.asset("assets/images/gif.gif"),
            const SizedBox(
              height: 8,
            ),
            const Text(
                '''I once wrote "Hello World!" using following languages and tools. Hence, I claim that I can use followig languages and tools😜, although I can write just "Hello World!".'''),
            const SizedBox(
              height: 8,
            ),
            buildHeadings("Languages and tools:"),
            const SizedBox(
              height: 8,
            ),
            buildLanguages(),
            const SizedBox(
              height: 8,
            ),
            const Text(
                '''I just don't want to bore you guys with my boring portfolio. So, I thought of boring you guys with my playlist.'''),
            const SizedBox(
              height: 8,
            ),
            buildHeadings("My playlist:"),
            buildPlayList(),
            buildContact(),
            buildHeadings("Buy me a coffee:"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildQrCard("assets/images/sunrise.jpg"),
                buildQrCard("assets/images/esewa.jpg")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
