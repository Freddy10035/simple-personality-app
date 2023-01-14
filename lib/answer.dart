
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
//Answer({super.key});

  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.red,
          backgroundColor: Colors.yellow,
        ),
        child: Text(answerText),
        onPressed: () => selectHandler(),
      ),
    );
  }
}
