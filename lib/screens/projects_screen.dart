import 'package:flutter/material.dart';

import '../../model/project_info.dart';
import '../../widgets/project_card.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  final form = GlobalKey<FormState>();
  ProjectInfo addedInformation =
      ProjectInfo(title: "", images: [], description: "", githubLink: "");

  _showBottomSheet(context) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Form(
              key: form,
              child: ListView(
                children: [
                  TextFormField(
                    decoration:
                        const InputDecoration(labelText: "Project Name"),
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter project name';
                      }
                      return null;
                    },
                    onSaved: (newValue) {
                      if (newValue != null) {
                        addedInformation = ProjectInfo(
                          title: newValue,
                          images: addedInformation.images,
                          description: addedInformation.description,
                          githubLink: addedInformation.githubLink,
                        );
                      } else {
                        return;
                      }
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: "Description"),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.multiline,
                    maxLines: 3,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter description';
                      }
                      return null;
                    },
                    onSaved: (newValue) {
                      if (newValue != null) {
                        addedInformation = ProjectInfo(
                          title: addedInformation.title,
                          images: addedInformation.images,
                          description: newValue,
                          githubLink: addedInformation.githubLink,
                        );
                      } else {
                        return;
                      }
                    },
                  ),
                  // const Text("Enter project image Urls"),
                  TextFormField(
                    decoration:
                        const InputDecoration(labelText: "Project Image Urls"),
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter image Urls';
                      }
                      return null;
                    },
                    onSaved: (newValue) {
                      if (newValue != null) {
                        addedInformation = ProjectInfo(
                          title: addedInformation.title,
                          images: [Image.network(newValue)],
                          description: addedInformation.description,
                          githubLink: addedInformation.githubLink,
                        );
                      } else {
                        return;
                      }
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: "Github Url"),
                    textInputAction: TextInputAction.done,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter github url';
                      }
                      return null;
                    },
                    onSaved: (newValue) {
                      if (newValue != null) {
                        addedInformation = ProjectInfo(
                          title: addedInformation.title,
                          images: addedInformation.images,
                          description: newValue,
                          githubLink: addedInformation.githubLink,
                        );
                      } else {
                        return;
                      }
                    },
                  ),
                  ElevatedButton(
                      onPressed: _saveForm,
                      child: const Text("Submit Project")),
                ],
              ));
        });
  }

  _saveForm() {
    final isValid = form.currentState!.validate();
    if (!isValid) return;
    form.currentState!.save();
    setState(() {
      projects.add(addedInformation);
    });
  }

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
          onPressed: () => _showBottomSheet(context),
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
