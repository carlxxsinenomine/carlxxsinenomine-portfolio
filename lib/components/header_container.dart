import 'package:flutter/material.dart';

import '../constants.dart';

class HeaderContainer extends StatelessWidget {
  final String headerTitle;
  const HeaderContainer({super.key, required this.headerTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: kBorder),
        ),
      ),
      child: Text.rich(
        TextSpan(
          text: "# ",
          style: kJetbrainsDescription.copyWith(
            decoration: TextDecoration.none,
            color: Colors.red,
          ),
          children: [
            TextSpan(
              text: headerTitle,
              style: kJetbrainsDescription.copyWith(
                decoration: TextDecoration.none,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
