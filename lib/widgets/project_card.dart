import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../main.dart';
import '../model/project_info.dart';

Widget buildCard(int index, context, String title, List images,
    String description, String githubLink) {
  final projects = Provider.of<MutateProject>(context).projects;
  return Padding(
    padding: const EdgeInsets.fromLTRB(8, 2, 8, 0),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${index + 1}) $title",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.clip,
              ),
            ),
            IconButton(
              onPressed: () {
                int index =
                    projects.indexWhere((element) => element.title == title);
                Provider.of<MutateProject>(context, listen: false)
                    .deleteProject(index);
              },
              icon: const Icon(Icons.delete_rounded),
            ),
          ],
        ),
      ),
      CarouselSlider.builder(
        itemCount: projects[index].images.length,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
          return Container(
            child: projects[index].images[itemIndex],
          );
        },
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          viewportFraction: 0.9,
          aspectRatio: 1,
          initialPage: 1,
          autoPlayCurve: Curves.easeInCirc,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(description),
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Source Code:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            InkWell(
              onTap: () {
                launchUrl(Uri.parse(githubLink));
              },
              child: Text(
                githubLink,
                style: const TextStyle(color: secondaryColor),
              ),
            ),
          ],
        ),
      ),
    ]),
  );
}
