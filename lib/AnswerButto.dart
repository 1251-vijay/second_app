import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.text, required this.onTap});

  final void Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
            textStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            foregroundColor: Colors.white,
            backgroundColor: const Color.fromARGB(255, 179, 21, 163)),
        onPressed: onTap,
        child: Text(
          text,
          textAlign: TextAlign.center,
        ));
  }
}
