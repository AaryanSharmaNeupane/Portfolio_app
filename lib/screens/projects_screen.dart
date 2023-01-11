import 'package:flutter/material.dart';
import '../../model/project_info.dart';
import '../../widgets/project_card.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          onPressed: () {},
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
