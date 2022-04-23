import 'package:flutter/material.dart';
import 'package:quiz/answer.dart';
import 'package:quiz/question.dart';
import 'package:quiz/result.dart';

import 'quiz.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _resultscore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _resultscore = 0;
    });
    //_questionIndex = 0;
    //_resultscore = 0;
  }

  void _answerQuestion() {
    int score = 0;
    _resultscore += score;
    setState(() {
      // ignore: void_checks
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('more');
    }

    //questionindex = questionindex + 1;
    //  print('the answer');
  }

  final _questions = const [
    {
      'questionText': 'what is your favourite colour',
      'answers': [
        {'text': 'blue', 'score': '70'},
        {'text': 'green', 'score': '70'},
        {'text': 'yellow', 'score': '70'},
        {'text': 'pink', 'score': '70'},
        //// 'green',
        //'yellow',
        //'pink'
      ],
    },
    {
      'questionText': 'what is your favourite animal',
      'answers': [
        {'text': 'cow', 'score': '70'},
        {'text': 'rat', 'score': '70'},
        {'text': 'momkey', 'score': '70'},
        {'text': 'cat', 'score': '70'},
        //'cow', 'rat', 'monkey', 'cat'],
      ],
    },
    {
      'questionText': 'what is your favourite name',
      'answers': [
        {'text': 'aditi', 'score': '70'},
        {'text': 'ram', 'score': '70'},
        {'text': 'sham', 'score': '70'},
        {'text': 'ji', 'score': '70'},
        //['aditi', 'shweta', 'ram', 'shaam'],
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('quiz app'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              questions: _questions,
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex)
          : Result(_resultscore, _resetQuiz),
    );
  }
}
