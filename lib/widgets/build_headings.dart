import 'package:flutter/material.dart';

import '../main.dart';

Widget buildHeadings(String headings) {
  return Align(
    alignment: Alignment.topLeft,
    child: Text(
      headings,
      style: const TextStyle(
        color: secondaryColor,
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
