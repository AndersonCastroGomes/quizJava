import 'package:flutter/material.dart';
import 'pages/homepage.dart';

void main() => runApp(JavaQuizApp());

class JavaQuizApp extends StatelessWidget {
  const JavaQuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Java Quiz',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}