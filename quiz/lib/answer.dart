import 'package:flutter/material.dart';
import './main.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHndler;
  final answerText;
  Answer(this.selectHndler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue,
      child: RaisedButton(
        child: Text(answerText),
        onPressed: selectHndler,
      ),
    );
  }
}
