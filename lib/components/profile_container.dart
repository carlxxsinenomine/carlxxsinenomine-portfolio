import 'package:carlxsinenomine/components/profile_row.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'header_container.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        decoration: kContainerDeco,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HeaderContainer(headerTitle: "PROFILE"),
            Container(
              padding: EdgeInsets.all(12),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(width: 12),
      
                  Expanded(
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Carl Johannes Munoz",
                          style: kJetbrainsDescription.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          "BS Computer Science",
                          style: kJetbrainsDescription.copyWith(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: kLabel,
                          ),
                        ),
                        Text(
                          "Bicol University",
                          style: kJetbrainsDescription.copyWith(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: kLabel,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 12,
                right: 12,
                bottom: 12,
              ),
              child: Column(
                children: <Widget>[
                  ProfileRow(
                    label: "JOINED",
                    labelData: "2022-SOMETHING",
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: kBorder,
                  ),
                  ProfileRow(
                    label: "LOCATION",
                    labelData: "Pantao, Libon, Albay",
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: kBorder,
                  ),
                  ProfileRow(
                    label: "EMAIL",
                    labelData: "carlxxsinenomine@gmail.com",
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: kBorder,
                  ),
                  ProfileRow(
                    label: "WEBSITE",
                    labelData: "WALA PA",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
