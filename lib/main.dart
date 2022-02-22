// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Whats\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 5},
        {'text': 'Green', 'score': 1},
        {'text': 'Red', 'score': 3},
        {'text': 'White', 'score': 2}
      ],
    },
    {
      'questionText': 'Whats\'s your favorite animal?',
      'answers': [
        {'text': 'Eliphant', 'score': 10},
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Monkey', 'score': 4},
        {'text': 'Snake', 'score': 1}
      ],
    },
    {
      'questionText': 'Whats\'s your favorite Choclate?',
      'answers': [
        {'text': 'DairyMilk', 'score': 10},
        {'text': 'Kitkat', 'score': 5},
        {'text': 'Snickers', 'score': 4},
        {'text': 'Galaxy', 'score': 1}
      ],
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    if (_questionIndex < _questions.length) {}
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });
  }

  void _resetScore() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(_totalScore, _resetScore),
      ),
    );
  }
}
