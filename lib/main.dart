import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import 'quiz.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    //implement createState
    return _MyAppState();
    //throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite colour?',
      'answers': [
        {'test': 'black', 'score': 30},
        {'test': 'red', 'score': 20},
        {'test': 'yellow', 'score': 50},
        {'test': 'green', 'score': 70},
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'test': 'dog', 'score': 60},
        {'test': 'cat', 'score': 50},
        {'test': 'lion', 'score': 80},
        {'test': 'elephant', 'score': 70},
      ]
    },
    {
      'questionText': 'Who\'s your favourite instructor?',
      'answers': [
        {'test': 'Doe', 'score': 50},
        {'test': 'Joan', 'score': 60},
        {'test': 'Dex', 'score': 70},
        {'test': 'Max', 'score': 70},
      ]
    },
  ];

  @override
  var _questionIndex = 0;
  var _totalScore = 0;

  

   void _answerQuestions(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('We have more Questions!');
    } else {
      print('No more questions for you sadly!');
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestions: _answerQuestions,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
