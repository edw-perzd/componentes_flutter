import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const mainColor = Color.fromARGB(255, 4, 104, 225);
  static const backColor = Colors.white;
  static const subtitleColor = Colors.grey;
  static const unselected = Colors.black;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      scaffoldBackgroundColor: backColor,
      appBarTheme: AppBarTheme(
          color: mainColor,
          titleTextStyle: GoogleFonts.lato(
              color: backColor, fontSize: 28.5, fontWeight: FontWeight.bold)),
      iconTheme: const IconThemeData(
        color: mainColor,
        size: 35.5,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          mainColor,
        ),
        foregroundColor: MaterialStateProperty.all(backColor),
        textStyle:
            MaterialStateProperty.all(GoogleFonts.montserrat(fontSize: 18)),
      )),
      textTheme: TextTheme(
          headlineLarge: GoogleFonts.montserrat(
              color: mainColor,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              // decoration: TextDecoration.underline,
              // decorationColor: Colors.red,
              // decorationStyle: TextDecorationStyle.wavy,
              decorationThickness: 3.0),
          headlineMedium: GoogleFonts.montserrat(
              color: mainColor,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              decorationThickness: 3.0),
          bodySmall: GoogleFonts.montserrat(
              color: subtitleColor,
              fontStyle: FontStyle.italic,
              decorationThickness: 3.0),
          /* */
          bodyMedium: GoogleFonts.montserrat(
            color: backColor,
            fontStyle: FontStyle.italic,
            /* */
          ),
          bodyLarge: GoogleFonts.montserrat(
              color: unselected, fontSize: 18.0, fontWeight: FontWeight.bold)));
}
