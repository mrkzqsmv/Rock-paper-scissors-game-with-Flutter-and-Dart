import 'package:flutter/material.dart';
import 'package:rock_paper_scissors_game/pages/intro_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Libre'),
      home: const IntroPage(),
    );
  }
}
