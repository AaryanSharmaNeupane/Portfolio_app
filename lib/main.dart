import 'package:flutter/material.dart';
import 'package:portfolio/model/project_info.dart';
import 'package:portfolio/screens/add_project_screen.dart';
import 'package:portfolio/screens/home_page.dart';
import 'package:provider/provider.dart';

const secondaryColor = Colors.teal;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MutateProject(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.teal,
          fontFamily: 'Quicksand',
          brightness: Brightness.dark,
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) => const HomePage(),
          AddProjectScreen.routeName: (context) => AddProjectScreen(),
        },
      ),
    );
  }
}
