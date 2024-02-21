import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const mainColor = Color.fromARGB(255, 4, 104, 225);
  static const backColor = Color.fromARGB(255, 230, 241, 249);
  static const subtitleColor = Colors.grey;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      scaffoldBackgroundColor: backColor,
      appBarTheme: const AppBarTheme(color: mainColor),
      textTheme: TextTheme(
          headlineLarge: GoogleFonts.openSans(
              color: mainColor,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              // decoration: TextDecoration.underline,
              // decorationColor: Colors.red,
              // decorationStyle: TextDecorationStyle.wavy,
              decorationThickness: 3.0),
          bodySmall: GoogleFonts.montserrat(
            color: subtitleColor,
            fontStyle: FontStyle.italic,
          )));
}
