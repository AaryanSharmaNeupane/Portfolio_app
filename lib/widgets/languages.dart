import 'package:flutter/material.dart';
import 'package:portfolio/main.dart';

Widget buildLanguages() {
  List<String> frontendLogos = [
    "https://storage.googleapis.com/cms-storage-bucket/a9d6ce81aee44ae017ee.png",
    "https://cdn.pixabay.com/photo/2017/08/05/11/16/logo-2582748_1280.png",
    "https://p.kindpng.com/picc/s/493-4938086_css-3-hd-png-download.png",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Bootstrap_logo.svg/1280px-Bootstrap_logo.svg.png",
  ];
  List<String> backendLogos = [
    "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/1200px-Python-logo-notext.svg.png",
    "https://image.pngaaa.com/339/4169339-middle.png",
    "https://cdn.dribbble.com/users/528264/screenshots/3140440/firebase_logo.png",
    "https://images.vexels.com/media/users/3/166179/isolated/preview/b83d6b47a9502dfaf535087627a8bf96-c-programming-language-icon.png",
    "https://play-lh.googleusercontent.com/jgZznKsptJVo_NfU5mRGSqb2xXgBxRzl_Y6572YKa571LCdficWKtEH0cp3_0YPHpuY",
  ];

  List<String> devOps = [
    "https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png",
    "https://practicetestgeeks.com/wp-content/uploads/2022/09/figma-logo-1.jpg",
    "https://cdn.icon-icons.com/icons2/3053/PNG/512/jira_cloud_macos_bigsur_icon_190051.png",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Slack_icon_2019.svg/2048px-Slack_icon_2019.svg.png",
  ];
  return Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      border: Border.all(
        width: 2,
        color: secondaryColor,
      ),
    ),
    child: Column(
      children: [
        IntrinsicHeight(
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Frontend",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(
                            foregroundImage: NetworkImage(frontendLogos[0]),
                            backgroundColor: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(
                            foregroundImage: NetworkImage(frontendLogos[1]),
                            backgroundColor: Colors.orange.shade900,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(
                            foregroundImage: NetworkImage(frontendLogos[2]),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: CircleAvatar(
                      foregroundImage: NetworkImage(frontendLogos[3]),
                    ),
                  ),
                ],
              ),
              const VerticalDivider(
                thickness: 2,
                color: secondaryColor,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Backend",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(
                            foregroundImage: NetworkImage(backendLogos[0]),
                            backgroundColor: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(
                            foregroundImage: NetworkImage(
                              backendLogos[1],
                            ),
                            backgroundColor: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(
                            foregroundImage: NetworkImage(
                              backendLogos[2],
                            ),
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: CircleAvatar(
                          foregroundImage: NetworkImage(backendLogos[3]),
                          backgroundColor: Colors.blue.shade500,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: CircleAvatar(
                          foregroundImage: NetworkImage(backendLogos[4]),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 2,
          color: secondaryColor,
        ),
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            "DevOps",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: CircleAvatar(
                foregroundImage: NetworkImage(devOps[0]),
                backgroundColor: Colors.black54,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: CircleAvatar(
                foregroundImage: NetworkImage(devOps[1]),
                backgroundColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: CircleAvatar(
                foregroundImage: NetworkImage(devOps[2]),
                backgroundColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: CircleAvatar(
                foregroundImage: NetworkImage(devOps[3]),
                backgroundColor: Colors.white,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
