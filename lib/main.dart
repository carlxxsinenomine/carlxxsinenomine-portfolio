import 'package:carlxsinenomine/components/about_container.dart';
import 'package:carlxsinenomine/components/header_container.dart';
import 'package:carlxsinenomine/components/profile_container.dart';
import 'package:carlxsinenomine/components/projects_container.dart';
import 'package:carlxsinenomine/components/socials_container.dart';
import 'package:github_contributions_grid/github_contributions_grid.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Color(0xFF080808),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: kContainerDeco,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text.rich(
                        TextSpan(
                          text: 'est.calex ',
                          style: kJetbrainsDescription.copyWith(
                            decoration: TextDecoration.none,
                            color: Colors.white70,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '//',
                              style: kJetbrainsDescription.copyWith(
                                decoration: TextDecoration.none,
                                color: Colors.red,
                              ),
                            ),
                            TextSpan(
                              text: ' carlxxsinenomine',
                              style: kJetbrainsDescription.copyWith(
                                decoration: TextDecoration.none,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(flex: 2, child: SizedBox()),
                    Expanded(
                      child: Text.rich(
                        TextSpan(
                          text: 'DATETIME ',
                          style: kJetbrainsDescription.copyWith(
                            decoration: TextDecoration.none,
                            color: Colors.white70,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '//',
                              style: kJetbrainsDescription.copyWith(
                                decoration: TextDecoration.none,
                                color: Colors.red,
                              ),
                            ),
                            TextSpan(
                              text: ' ${DateTime.timestamp()}',
                              style: kJetbrainsDescription.copyWith(
                                decoration: TextDecoration.none,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              flex: 14,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final int cols = constraints.maxWidth < 1500 ? 1 : 3;

                  if (cols == 1) {
                    return ListView(
                      children: <Widget>[
                        ProfileContainer(),
                        SizedBox(height: 8),
                        AboutContainer(),
                        SizedBox(height: 8),
                        SocialsContainer(),
                        SizedBox(height: 8),

                        SizedBox(height: 500, child: ProjectsContainer()),
                        SizedBox(height: 8),
                        Container(
                          height: 200,
                          decoration: kContainerDeco,
                          child: Column(
                            children: [
                              HeaderContainer(headerTitle: "GITHUB ACTIVITY"),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                                  child: GitHubContributionsGrid(
                                      username: 'carlxxsinenomine',
                                      levelColors: const [
                                        Color(0xFF1A1A1E),
                                        Color(0xFF4B0C0C),
                                        Color(0xFF7A1515),
                                        Color(0xFFB22222),
                                        Color(0xFFFF3333),
                                      ],
                                      labelStyle: kJetbrainsDescription.copyWith(
                                        color: const Color(0xFF888888),
                                        fontSize: 10,
                                      ),
                                      errorStyle: kJetbrainsDescription.copyWith(
                                        color: Colors.red.shade300,
                                        fontSize: 11,
                                      ),
                                      loadingIndicator: const CircularProgressIndicator(
                                        strokeWidth: 1.5,
                                        color: Color(0xFFFF3333),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          decoration: kContainerDeco,
                          child: Column(
                            children: <Widget>[
                              HeaderContainer(headerTitle: "METRICS"),
                            ],
                          ),
                        ),
                      ],
                    );
                  }

                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: ListView(
                          children: <Widget>[
                            ProfileContainer(),
                            SizedBox(height: 8),
                            AboutContainer(),
                            SizedBox(height: 8),
                            SocialsContainer(),
                          ],
                        ),
                      ),
                      SizedBox(width: 8),

                      Expanded(
                        flex: 2,
                        child: Column(
                          children: <Widget>[
                            Expanded(flex: 2, child: ProjectsContainer()),
                            SizedBox(height: 8),
                            Expanded(
                              child: Container(
                                decoration: kContainerDeco,
                                child: Column(
                                  children: [
                                    HeaderContainer(
                                      headerTitle: "GITHUB ACTIVITY",
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
                                          child: GitHubContributionsGrid(
                                            username: 'carlxxsinenomine',
                                            levelColors: const [
                                              Color(0xFF1A1A1E),
                                              Color(0xFF4B0C0C),
                                              Color(0xFF7A1515),
                                              Color(0xFFB22222),
                                              Color(0xFFFF3333),
                                            ],
                                            labelStyle: kJetbrainsDescription.copyWith(
                                              color: const Color(0xFF888888),
                                              fontSize: 10,
                                            ),
                                            errorStyle: kJetbrainsDescription.copyWith(
                                              color: Colors.red.shade300,
                                              fontSize: 11,
                                            ),
                                            loadingIndicator: const CircularProgressIndicator(
                                              strokeWidth: 1.5,
                                              color: Color(0xFFFF3333),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8),

                      Expanded(
                        flex: 1,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                decoration: kContainerDeco,
                                child: Column(
                                  children: [
                                    HeaderContainer(headerTitle: "METRICS"),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Expanded(
                              child: Container(
                                decoration: kContainerDeco,
                                child: Column(
                                  children: [
                                    HeaderContainer(
                                      headerTitle: "MOST USED LANGUAGES",
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Expanded(
                              child: Container(
                                decoration: kContainerDeco,
                                child: Column(
                                  children: [
                                    HeaderContainer(headerTitle: "SKILLS"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
