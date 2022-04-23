import 'package:flutter/material.dart';

//import './main.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final VoidCallback answerQuestion;
  final List<Map<String, dynamic>> questions;
  final int questionIndex;
  // ({ Key? key }) : super(key: key);
  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });
//{void answerQuestion, List<Map<String, Object>> questions});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, dynamic>>)
            .map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
      ],
    );
  }
}
