import 'package:flutter/material.dart';
import 'package:second_app/Question_Screen.dart';

import 'package:second_app/Start_Screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activescreen = 'Start-Scren';

  void switchscreen() {
    setState(() {
      activescreen = 'Question-Screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchscreen);
    if (activescreen == 'Question-Screen') {
      screenWidget = const QuestioScreen();
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 165, 16, 111),
              Color.fromARGB(255, 100, 9, 87)
            ], begin: Alignment.topRight, end: Alignment.bottomRight)),
            child: screenWidget),
      ),
    );
  }
}
