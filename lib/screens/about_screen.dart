import 'package:flutter/material.dart';
import 'package:portfolio/widgets/languages.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Text("Hello there, Welcome to Aaryan's World."),
          Image.asset("assets/images/gif.gif"),
          const Text(
              '''I once wrote "Hello World!" using following languages and tools. Hence, I claim that I can use followig languages and tools😜, although I can write just "Hello World!".'''),
          buildLanguages(),
        ],
      ),
    );
  }
}
