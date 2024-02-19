import 'package:flutter/material.dart';

class AppTheme {
  static const mainColor = Color.fromARGB(255, 93, 165, 252);
  static const backColor = Color.fromARGB(255, 248, 184, 213);
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      scaffoldBackgroundColor: backColor,
      appBarTheme: const AppBarTheme(color: mainColor),
      textTheme: const TextTheme(
          headlineLarge: TextStyle(
              color: Color.fromARGB(255, 117, 11, 146),
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'sans-serif')));
}
