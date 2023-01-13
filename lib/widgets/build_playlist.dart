import 'package:flutter/material.dart';
import '../model/playlist_info.dart';
import 'package:url_launcher/url_launcher_string.dart';

Widget buildSongCard(playListUrl, playListImages) {
  return InkWell(
    onTap: () {
      launchUrlString(playListUrl);
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: SizedBox(
          height: 100,
          width: 100,
          child: Image.network(
            playListImages,
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
  );
}

Widget buildPlayList() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (int index = 0; index < playlist.length; index++)
            buildSongCard(playlist[index].playlistUrl, playlist[index].imageUrl)
        ],
      ),
    ),
  );
}
