import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const mainColor = Color.fromARGB(255, 4, 104, 225);
  static const backColor = Colors.white;
  static const subtitleColor = Colors.blueGrey;
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
          headlineMedium: GoogleFonts.acme(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              decorationThickness: 3.0),
          bodySmall: GoogleFonts.montserrat(
            color: subtitleColor,
            fontStyle: FontStyle.italic,
          )));
}
