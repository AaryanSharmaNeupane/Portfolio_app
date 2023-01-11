import 'package:flutter/material.dart';
import 'package:portfolio/widgets/contact.dart';
import 'package:portfolio/widgets/languages.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
            Text("My playlist"),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    launchUrlString(
                        "https://www.youtube.com/watch?v=WOdnRhWeHoY&list=RDWOdnRhWeHoY");
                  },
                  child: Text("11111111111"),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    launchUrlString(
                        "https://www.youtube.com/watch?v=p9r2GxMlRD4&list=RDp9r2GxMlRD4");
                  },
                  child: Text("222222222222"),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    launchUrlString(
                        "https://www.youtube.com/watch?v=D-0UofHeFdc&list=RDD-0UofHeFdc");
                  },
                  child: Text("333333333"),
                ),
              ],
            ),
            buildContact(),
          ],
        ),
      ),
    );
  }
}
