import 'package:flutter/material.dart';

import './main.dart';

class Question extends StatelessWidget {
  final String questionText;
  //final int index;

  Question(this.questionText);
  //Question(String question, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity, child: Text(questionText));
  }
}
