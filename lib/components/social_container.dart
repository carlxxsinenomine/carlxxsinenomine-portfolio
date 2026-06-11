import 'package:flutter/material.dart';

import '../constants.dart';

class SocialContainer extends StatelessWidget {
  final String label;
  const SocialContainer({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: kContainerDeco,
      child: Text(
        label,
        style: kJetbrainsDescription.copyWith(
          color: kLabel,
          fontSize: 11.2,
        ),
      ),
    );
  }
}
