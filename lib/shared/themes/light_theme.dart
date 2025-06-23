import 'package:flutter/material.dart';

class LightTheme {
  static final ThemeData light = ThemeData(
    primarySwatch: Colors.deepOrange,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
      iconTheme: IconThemeData(color: Colors.black),
    ),
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black, // Text color for elevated buttons
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Button shape
        ),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Button padding
      ),
    ),
  );
}
