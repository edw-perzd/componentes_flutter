import 'package:flutter/material.dart';
import 'package:practica3_componentes/home_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
        theme: ThemeData(
            scaffoldBackgroundColor: const Color.fromARGB(255, 93, 165, 252),
            appBarTheme:
                const AppBarTheme(color: Color.fromARGB(255, 117, 11, 146)),
            textTheme: const TextTheme(
                headlineLarge: TextStyle(
                    color: Color.fromARGB(255, 117, 11, 146),
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'sans-serif'))));
  }
}
