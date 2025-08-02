import 'package:flutter/material.dart';

class AppStyles{
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color grey = Colors.grey;
  static const Color primaryColor = Color(0xFFE76F51);
  static const Color secondaryColor = Color(0xFFF6C787);

  static Gradient appGradientTheme = LinearGradient(
    begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [primaryColor,secondaryColor]);
  static Gradient appGradientThemeVertical = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [primaryColor,secondaryColor]);
  // Font Size
static const double tiny = 10;
static const double small = 12;
static const double medium = 14;
static const double large = 16;
static const double big = 18;
static const double ultraBig = 20;
}