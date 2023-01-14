import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const Result({super.key});

  final int resultScore;
  Result(this.resultScore);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 120) {
      resultText = 'You need to change brother';
    } else if (resultScore <= 150) {
      resultText = 'Might be really awesome I reckon';
    } else if (resultScore <= 200) {
      resultText = 'You are so good!';
    } else {
      resultText = 'You are the best of us';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
