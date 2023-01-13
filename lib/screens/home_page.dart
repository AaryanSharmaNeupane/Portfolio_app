import 'package:flutter/material.dart';

import '../screens/about_screen.dart';
import '../screens/projects_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: const [
              CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage(
                  "assets/images/dv.jpg",
                ),
              ),
              SizedBox(
                width: 26,
              ),
              Text("Aaryan Sharma Neupane"),
            ],
          ),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(
                icon: Icon(Icons.dashboard_customize_rounded),
                text: "Projects",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            AboutScreen(),
            ProjectsScreen(),
          ],
        ),
      ),
    );
  }
}
