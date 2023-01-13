import 'package:flutter/material.dart';
import 'package:portfolio/screens/home_page.dart';
import '../screens/first_screen.dart';

const secondaryColor = Colors.teal;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Quicksand',
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: const FirstScreen(),
    );
  }
}
