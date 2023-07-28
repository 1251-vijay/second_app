import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(
    this.quizstart, {
    super.key,
  });
  final void Function() quizstart;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(179, 255, 255, 255),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Leran Fluttter course",
            style: TextStyle(
              color: Color.fromARGB(218, 255, 255, 255),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              onPressed: quizstart,
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start'))
        ],
      ),
    );
  }
}
