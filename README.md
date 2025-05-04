// bmi_calculator

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'BMI Calculator',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[],
        ),
      ),
    );
  }
}

// To improve performance, consider the following:
// 1. Move heavy computations to background isolates using compute() function or the Isolate API
// 2. Use Future.delayed() or a state management solution to break up heavy operations
// 3. Check for expensive operations in your build methods
// 4. Avoid complex animations/transitions that might strain the renderer
// 5. Implement const constructors where possible
// 6. Use ListView.builder() instead of regular ListView for long lists
// 7. Consider using RepaintBoundary for complex UI sections that don't change often
// 8. Split complex widgets into smaller, more manageable components

// To run the app in profile mode for more accurate performance metrics:
// flutter run --profile