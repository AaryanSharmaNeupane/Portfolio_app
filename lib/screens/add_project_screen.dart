import 'package:flutter/material.dart';
import 'package:portfolio/main.dart';
import 'package:provider/provider.dart';

import '../model/project_info.dart';

class AddProjectScreen extends StatefulWidget {
  const AddProjectScreen({super.key});
  static const routeName = "/add-project-screen";

  @override
  State<AddProjectScreen> createState() => _AddProjectScreenState();
}

class _AddProjectScreenState extends State<AddProjectScreen> {
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

  String dropdownvalue = '1';
  var items = [
    '1',
    '2',
    '3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Your Project"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
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
              Row(
                children: [
                  const Text(
                    "Select number of Image Urls:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  const Spacer(),
                  DropdownButton(
                    value: dropdownvalue,
                    underline: Container(
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        border: Border.all(width: 1, color: secondaryColor),
                      ),
                    ),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ],
              ),
              for (int i = 0; i < double.parse(dropdownvalue); i++)
                Padding(
                  padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: "Image Url"),
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
      ),
    );
  }
}
