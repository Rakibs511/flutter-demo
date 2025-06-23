import 'package:flutter/material.dart';

class DarkTheme {
  static final ThemeData dark = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.deepOrange,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      iconTheme: IconThemeData(color: Colors.white),
    ),
    scaffoldBackgroundColor: Colors.black,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white, // Text color for elevated buttons
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Button shape
        ),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Button padding
      ),
    ),
  );
}