import 'package:flutter/material.dart';
import 'package:second_app/AnswerButto.dart';
import 'package:second_app/Questions_DATA/Questions_data.dart';

class QuestioScreen extends StatefulWidget {
  const QuestioScreen({super.key});

  @override
  State<QuestioScreen> createState() => _QuestioScreenState();
}

class _QuestioScreenState extends State<QuestioScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion() {
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
              currentQuestion.text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
            const SizedBox(
              height: 20,
            ),
            ...currentQuestion.answers
                .map((e) => AnswerButton(text: e, onTap: answerQuestion))
          ],
        ),
      ),
    );
  }
}
