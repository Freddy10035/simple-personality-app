import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';
import 'package:flutter_complete_guide/result.dart';
import './answer.dart';
import 'quiz.dart';

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
  final _questions = const [
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

  var _questionIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('We have more Questions!');
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestions: _answerQuestions,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
