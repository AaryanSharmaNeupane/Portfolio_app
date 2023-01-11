import 'package:flutter/material.dart';
import 'package:portfolio/widgets/contact.dart';
import 'package:portfolio/widgets/languages.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text("Hello there, Welcome to Aaryan's World."),
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
            buildLanguages(),
            buildContact(),
          ],
        ),
      ),
    );
  }
}
