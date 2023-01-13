import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestions() {
    questionIndex = questionIndex + 1;
    //print('Answer chosen!');
  }

  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite colour?',
      'What\'s your favourite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(
              questions[0],
            ),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestions,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestions,
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestions,
            ),
          ],
        ),
      ),
    );
  }
}
