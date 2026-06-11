import 'package:flutter/material.dart';

import '../constants.dart';
import 'header_container.dart';

class ProjectsContainer extends StatelessWidget {
  const ProjectsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kContainerDeco,
      child: Column(
        children: [
          Expanded(child: HeaderContainer(headerTitle: "PROJECTS")),
          Expanded(
            flex: 11,
            child: Container(
              padding: EdgeInsets.all(12),
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  mainAxisExtent: 120,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: kContainerDeco,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Title",
                                style: kJetbrainsDescription.copyWith(
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Container(
                                height: 20,
                                width: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red),
                                ),
                                child: Center(
                                  child: Text(
                                    "ORG",
                                    style: kJetbrainsDescription.copyWith(
                                      color: Colors.red,
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8,),
                        Expanded(
                          child: Text(
                            "The quick brown fox jumps over the lazy brown dog. Kahit anong sabihin nila.",
                            style: kJetbrainsDescription.copyWith(
                              color: kLabel,
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Divider(
                          height: 1,
                          thickness: 1,
                          color: kBorder,
                        ),
                        SizedBox(height: 5,),
                        Wrap(
                          spacing: 6,
                          runSpacing: 4,
                          children: <Widget>[
                          Container(
                            padding: EdgeInsetsGeometry.symmetric(horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueGrey),
                            ),
                            child: Text(
                              "Flutter",
                              style: kJetbrainsDescription.copyWith(
                                color: Colors.blueGrey,
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsetsGeometry.symmetric(horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueGrey),
                            ),
                            child: Text(
                              "Python",
                              style: kJetbrainsDescription.copyWith(
                                color: Colors.blueGrey,
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],)
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
