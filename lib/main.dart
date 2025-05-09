import 'package:flutter/material.dart';
import 'package:flutter_final_exam/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 1)),
    );
  }
}