import 'package:flutter/material.dart';
import 'package:portfolio/main.dart';
import 'package:url_launcher/url_launcher.dart';

Widget buildContact() {
  return Card(
    elevation: 5,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Connect with me:",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        Text(
          "-> Phone Number: ",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text("9860221380 || 9881334640"),
        Text(
          "-> Emails:",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text("sonofnaleen@gmail.com || rustuneupane09@gmail.com"),
        Text(
          "-> Socials:",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            InkWell(
              onTap: (() {
                launchUrl(
                  Uri.parse("https://github.com/AaryanSharmaNeupane"),
                );
              }),
              child: CircleAvatar(
                foregroundImage: NetworkImage(
                    "https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png"),
              ),
            ),
            Spacer(),
            InkWell(
              onTap: (() {
                launchUrl(
                  Uri.parse("https://www.linkedin.com/in/aaryan-sharma09"),
                );
              }),
              child: CircleAvatar(
                foregroundImage: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/145/145807.png"),
              ),
            ),
            Spacer(),
            InkWell(
              onTap: (() {
                launchUrl(
                  Uri.parse("https://www.instagram.com/that_guy_on_internet/"),
                );
              }),
              child: CircleAvatar(
                foregroundImage: NetworkImage(
                    "https://i.pinimg.com/736x/24/37/73/2437730f7e3a5705e205e67fa2cd1020.jpg"),
              ),
            ),
            Spacer(),
            InkWell(
              onTap: (() {
                launchUrl(
                  Uri.parse("https://www.facebook.com/theinfinity09"),
                );
              }),
              child: CircleAvatar(
                foregroundImage: NetworkImage(
                    "https://www.edigitalagency.com.au/wp-content/uploads/Facebook-logo-blue-circle-large-transparent-png.png"),
                backgroundColor: Colors.white,
              ),
            ),
          ],
        )
      ]),
    ),
  );
}
