import 'package:flutter/material.dart';

class ProjectInfo {
  String title;
  List<Image> images;
  String description;
  String githubLink;

  ProjectInfo({
    required this.title,
    required this.images,
    required this.description,
    required this.githubLink,
  });
}

List<ProjectInfo> projects = [
  ProjectInfo(
      title: "Yatraa",
      images: [
        Image.network(
            "https://user-images.githubusercontent.com/63339028/210755015-3317b6b8-aa28-4abc-8fbf-dc5673f64580.jpg"),
        Image.network(
            "https://user-images.githubusercontent.com/63339028/210755027-0f08be81-5203-4a8e-9c1e-6b8d198daf41.jpg"),
        Image.network(
            "https://user-images.githubusercontent.com/63339028/210755038-bf7616cd-4ae5-4479-b43a-1b07460d8bd7.jpg"),
      ],
      description:
          '''This is an app which was developed with the main aim to ease public transportation service. It has a feature to track public buses, find the nearest bus stop, calculate the approximate price to travel from one place to other and so on. This app was developed as a part of final year project for the university.''',
      githubLink: "https://github.com/AaryanSharmaNeupane/yatraa.git"),
  ProjectInfo(
      title: "Parichaya",
      images: [
        Image.network(
            "https://user-images.githubusercontent.com/63339028/210756286-622c132e-e8f0-4eca-949d-f6bdda68ef6b.jpg"),
        Image.network(
            "https://user-images.githubusercontent.com/63339028/210756284-51e91d83-a4f6-484a-b3fe-86c8fbf18e3c.jpg")
      ],
      description:
          '''This is an app which was developed with the aim to provide a platform to store personal documents and to provide a secured medium to share these documents. It includes features such as adding documents and files and sharing those documents through the link generated in the app. It was developed as a part of minor project for the university.''',
      githubLink:
          "https://github.com/AaryanSharmaNeupane/Parichaya-frontend.git"),
  ProjectInfo(
      title: "Flutter e-commerce app",
      images: [
        Image.network(
            "https://user-images.githubusercontent.com/63339028/210758279-222aba87-5631-4f9d-97ee-7fde9d46daa6.jpg"),
        Image.network(
            "https://user-images.githubusercontent.com/63339028/210758286-3429b343-2f67-493b-ace5-6f8bd86c7c34.jpg"),
        Image.network(
            "https://user-images.githubusercontent.com/63339028/210758289-65107c1c-ad60-4e5a-b6eb-8e9fb4ad5a82.jpg"),
      ],
      description:
          '''This is an app developed to practice flutter framework. It includes features such as adding, editing and deleting the products for ecommerce app. Also, user can select their favourite products in the app.''',
      githubLink: "https://github.com/AaryanSharmaNeupane/shop_app.git"),
  ProjectInfo(
      title: "Medicine Reminder app",
      images: [
        Image.network(
            "https://user-images.githubusercontent.com/63339028/210764570-03b84442-0d9f-4d45-8274-d13923024668.jpg"),
        Image.network(
            "https://user-images.githubusercontent.com/63339028/210764574-accb2a84-49c7-4dd3-a41e-59e7738ccf25.jpg"),
      ],
      description:
          '''This is an app developed to practice flutter framework. It includes features such as adding and deleting the medicines.''',
      githubLink:
          "https://github.com/AaryanSharmaNeupane/internsathi-flutter-medicine-app.git")
];
