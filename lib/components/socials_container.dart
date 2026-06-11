import 'package:carlxsinenomine/components/social_container.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'header_container.dart';

class SocialsContainer extends StatelessWidget {
  const SocialsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kContainerDeco,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderContainer(headerTitle: "SOCIALS"),
          Container(
            padding: EdgeInsets.all(12),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: SocialContainer(label: 'Github',),
                    ),
                    SizedBox(width: 8,),
                    Expanded(
                      child: SocialContainer(label: 'Github',),
                    ),
                    SizedBox(width: 8,),
                    Expanded(
                      child: SocialContainer(label: 'Github',),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: SocialContainer(label: 'Github',),
                    ),
                    SizedBox(width: 8,),
                    Expanded(
                      child: SocialContainer(label: 'Github',),
                    ),
                    SizedBox(width: 8,),
                    Expanded(
                      child: SocialContainer(label: 'Github',),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
