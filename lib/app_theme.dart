import 'dart:ui';

import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xff39A552);
  static const Color navy = Color(0xff4F5A69);
  static const Color black = Color(0xff000000);
  static const Color white = Color(0xffffffff);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primary,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      backgroundColor: primary,
      foregroundColor: white,
      titleTextStyle: TextStyle(
        fontSize: 22,
        color: white,
        fontWeight: FontWeight.w400,
      ),
      centerTitle: true,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 22,
        color: white,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
