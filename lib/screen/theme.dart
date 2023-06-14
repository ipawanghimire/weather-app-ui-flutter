import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.grey[900],
  canvasColor: Colors.grey[800],
  cardColor: Colors.black,
  backgroundColor: Colors.black,
  primaryColor: Colors.deepPurpleAccent,
  accentColor: Colors.green,
  textTheme: TextTheme(
    bodyText1: TextStyle(color: Colors.white), // White text color
    bodyText2: TextStyle(color: Colors.white), // White text color
    // Customize other text styles as needed
  ),
);
