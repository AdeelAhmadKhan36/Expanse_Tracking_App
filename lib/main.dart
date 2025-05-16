import 'package:flutter/material.dart';

import 'mvvm/config/app_themes/theme.dart';
import 'mvvm/view/home.dart';

var KColorSchem=ColorScheme.fromSeed(
    seedColor:Color.fromARGB(255, 96, 59, 181),

);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
        theme: appTheme,

      home:  Home_Screen(),
    );
  }
}

