import 'package:flutter/material.dart';

import '../constants.dart';

class ProfileRow extends StatelessWidget {
  final String label;
  final String labelData;

  const ProfileRow({super.key, required this.label, required this.labelData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            child: Text(
              label,
              style: kJetbrainsDescription.copyWith(
                fontSize: 13,
                fontWeight: FontWeight.normal,
                color: kLabel,
              ),
            ),
          ),
          Flexible(
            child: Text(
              labelData,
              style: kJetbrainsDescription.copyWith(
                fontSize: 13,
                fontWeight: FontWeight.normal,
                color: kLabel,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
