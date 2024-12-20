import 'package:flutter/material.dart';
import 'screens/planner_feature/planner_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Study Timer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StudyTimerScreen(),
    );
  }
}
