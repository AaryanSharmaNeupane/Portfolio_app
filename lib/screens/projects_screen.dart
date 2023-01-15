import 'package:flutter/material.dart';
import 'package:portfolio/screens/add_project_screen.dart';
import 'package:provider/provider.dart';

import '../../model/project_info.dart';
import '../../widgets/project_card.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});
  static const routeName = "/";
  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  @override
  Widget build(BuildContext context) {
    final projects = Provider.of<MutateProject>(context).projects;
    return Stack(children: [
      ListView.builder(
        itemBuilder: ((context, index) => buildCard(
              index,
              context,
              projects[index].title,
              projects[index].images,
              projects[index].description,
              projects[index].githubLink,
            )),
        itemCount: projects.length,
      ),
      Positioned(
        bottom: 26,
        right: 17,
        child: ElevatedButton(
          onPressed: () =>
              Navigator.of(context).pushNamed(AddProjectScreen.routeName),
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(13),
          ),
          child: const Icon(Icons.add),
        ),
      )
    ]);
  }
}
