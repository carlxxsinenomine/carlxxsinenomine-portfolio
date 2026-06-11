import 'package:flutter/material.dart';

import '../constants.dart';
import 'header_container.dart';

final List<String> techStack = [
  "Python",
  "Java",
  "C",
  "Dart",
  "Flutter",
  "JavaScript",
  "FastAPI",
  "Flask",
  "Riverpod",
  "Dio",
  "Firebase",
  "Supabase",
  "MySQL",
  "MongoDB",
  "PostgreSQL",
  "Linux",
  "Git",
  "Claude Code",
  "HTTPie",
  "RestAPI",
  "Streamlit",
  "Numpy",
  "Pandas",
  "PyCharm",
  "Android Studio",
  "..."
];

class AboutContainer extends StatelessWidget {
  const AboutContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kContainerDeco,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderContainer(headerTitle: "TECH STACK"),
          Container(
            padding: EdgeInsets.all(12),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: techStack
                  .map(
                    (item) => Container(
                      padding: EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                      decoration: kContainerDeco,
                      child: Text(
                        item,
                        style: kJetbrainsDescription.copyWith(
                          color: kLabel,
                          fontSize: 11.2,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
