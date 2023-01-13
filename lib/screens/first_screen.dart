import 'dart:async';
import 'package:flutter/material.dart';

import '../screens/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});
  @override
  State<FirstScreen> createState() => _SplashState();
}

class _SplashState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const SecondScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Error"),
            ),
            const Text("Oops, Something went wrong. Please"),
            const Text("try again later."),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(onPressed: () {}, child: const Text("OK")),
            ),
          ],
        ),
      ),
    );
  }
}
