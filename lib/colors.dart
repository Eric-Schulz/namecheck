import 'package:flutter/material.dart';

const Color kColorPageBlue = Color(0xFF50A2E6);
const Color kColorPageTurquoise = Color(0xFF7CE6CC);
const Color kColorPagePink = Color(0xFFE8ADCD);
const Color kColorPagePurple = Color(0xFF9926E6);
const Color kColorPageYellow = Color(0xFFE6DE9E);
const Color kColorPageOrange = Color(0xFFE67052);
const Color kColorPagegGreen = Color(0xFFEAFFBD);
const Color kColorPageGreenDark = Color(0xFF34CC5A);



const List<LinearGradient> gradientList = [
  LinearGradient(colors: [kColorPageTurquoise, kColorPageBlue],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight),
  LinearGradient(colors: [kColorPagePink, kColorPagePurple],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight),
  LinearGradient(colors: [kColorPageYellow, kColorPageOrange],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight),
  LinearGradient(colors: [kColorPagegGreen, kColorPageGreenDark],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight),
];