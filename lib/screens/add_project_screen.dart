import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/project_info.dart';

// ignore: must_be_immutable
class AddProjectScreen extends StatelessWidget {
  AddProjectScreen({super.key});
  static const routeName = "/add-project-screen";

  final form = GlobalKey<FormState>();

  ProjectInfo addedInformation =
      ProjectInfo(title: "", images: [], description: "", githubLink: "");

  void _saveForm(context) {
    final isValid = form.currentState!.validate();
    if (!isValid) return;
    form.currentState!.save();
    Provider.of<MutateProject>(context, listen: false)
        .addProjects(addedInformation)
        .then((_) {
      Navigator.of(context).pop();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Your Project"),
      ),
      body: Form(
        key: form,
        child: ListView(
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: "Project Name"),
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
                    description: addedInformation.description,
                    githubLink: newValue,
                  );
                } else {
                  return;
                }
              },
            ),
            ElevatedButton(
                onPressed: () => _saveForm(context),
                child: const Text("Submit Project")),
          ],
        ),
      ),
    );
  }
}
