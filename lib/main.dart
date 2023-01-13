import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';
import './answer.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
    //throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    //print('Answer chosen!');
  }

  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favourite colour?',
        'answers': ['black', 'blue', 'green', 'yellow']
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': ['dog', 'cat', 'cow', 'rabbit']
      },
      {
        'questionText': 'Who\'s your favourite instructor?',
        'answers': ['Doe', 'Jogn', 'Freddie', 'Dex']
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex] ['questionText'] as String,
            ),
            Answer(_answerQuestions),
            Answer(_answerQuestions),
            Answer(_answerQuestions),
          ],
        ),
      ),
    );
  }
}
