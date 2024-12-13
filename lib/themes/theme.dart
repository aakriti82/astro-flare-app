import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      headlineMedium: TextStyle(color: Colors.black, fontSize: 32, fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(color: Colors.black87, fontSize: 18),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.purple,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TextTheme(
      headlineMedium: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(color: Colors.white70, fontSize: 18),
    ),
  );
}