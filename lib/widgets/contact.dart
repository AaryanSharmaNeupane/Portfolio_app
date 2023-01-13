import 'package:flutter/material.dart';
import 'package:portfolio/model/playlist_info.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/build_headings.dart';

Widget buildContactHead(head) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
    child: Text(
      head,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget buildContactBody(body) {
  return Container(padding: const EdgeInsets.only(left: 26), child: Text(body));
}

Widget buildContact() {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    buildHeadings("Connect with me:"),
    buildContactHead("-> Phone Number: "),
    buildContactBody("9860221380 || 9881334640"),
    buildContactHead("-> Emails:"),
    buildContactBody("sonofnaleen@gmail.com || rustuneupane09@gmail.com"),
    buildContactHead("-> Socials:"),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (int index = 0; index < socials.length; index++)
            InkWell(
              onTap: (() {
                launchUrl(
                  Uri.parse(socials[index].playlistUrl),
                );
              }),
              child: CircleAvatar(
                foregroundImage: NetworkImage(socials[index].imageUrl),
                backgroundColor: Colors.white,
              ),
            ),
        ],
      ),
    )
  ]);
}
