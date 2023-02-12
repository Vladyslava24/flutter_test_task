import 'package:flutter/material.dart';
import 'package:flutter_test_task/home/screens/home-screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test Task',
      home: const HomeScreen(),
    );
  }
}