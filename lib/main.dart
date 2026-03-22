import 'package:flutter/material.dart';
import 'package:qwiz_app/di/inject_module.dart';
import 'package:qwiz_app/presentation/quiz_page.dart/quiz_page.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: QuizPage(),
    );
  }
}
