import 'dart:async';
import 'package:flutter/material.dart';

import '../screens/home_page.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});
  @override
  State<SecondScreen> createState() => _SplashState();
}

class _SplashState extends State<SecondScreen> {
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
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 350,
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  "assets/images/shaq.gif",
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text("HA HA, Gotcha!🤣"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
