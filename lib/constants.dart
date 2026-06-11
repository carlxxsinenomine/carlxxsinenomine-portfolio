import 'package:flutter/material.dart';

// Colors
final Color kBGPanel = Color(0xFF111111);
final Color kBorder = Color(0xFF222222);
final Color kLabel = Color(0xFF666666);
final Color kSocialContainer = Color(0xFF080808);
// Decorations
final BoxDecoration kContainerDeco = BoxDecoration(
  color: kBGPanel,
  border: Border.all(color: kBorder),
);
// TextStyles
final TextStyle kJetbrainsFontTitle = TextStyle(
  color: Color(0xFFCFCFCF),
  fontFamily: "Roboto",
  fontWeight: FontWeight.w900,
  fontSize: 35,
);

final TextStyle kJetbrainsDescription = TextStyle(
  color: Color(0xFFE2E8CE),
  fontFamily: "Jetbrains Mono",
  fontWeight: FontWeight.bold,
  fontSize: 15,
);

final TextStyle kJetbrainsLoginRegister = TextStyle(
  color: Color(0xFFE2E8CE),
  fontFamily: "Jetbrains Mono",
  fontWeight: FontWeight.bold,
  fontSize: 10,
);

/// Hero tag
final String addTag = 'add-tag';
