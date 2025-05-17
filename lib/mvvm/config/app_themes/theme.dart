import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  useMaterial3: true,

  // Whole App Colors
  scaffoldBackgroundColor: Colors.black,

  // AppBar Style
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.teal,
    foregroundColor: Colors.white,
  ),

  // Card Style
  cardTheme: CardTheme(
    color: Colors.teal,
    // margin: EdgeInsets.all(10),
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),

  // Text Style
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.white, fontSize: 18),
    bodyMedium: TextStyle(color: Colors.black87),
  ),


);


final kColorScheme = ColorScheme.fromSeed(seedColor: Colors.deepPurple);
final kDarkColorScheme = ColorScheme.fromSeed(
  seedColor: Colors.deepPurple,
  brightness: Brightness.dark,
);

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: kColorScheme,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    backgroundColor: kColorScheme.primaryContainer,
    foregroundColor: Colors.white,
  ),
);

final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: kDarkColorScheme,
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: AppBarTheme(
    backgroundColor: kDarkColorScheme.primaryContainer,
    foregroundColor: Colors.white,
  ),
);
