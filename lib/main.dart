import 'package:bmi_calculator/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/Config/Theme.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      themeMode: ThemeMode.system,
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,
      theme: LightTheme,
      darkTheme: DarkTheme,
      home:  Homepage(),
    );
  }
}