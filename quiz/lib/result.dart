import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const Result({Key? key}) : super(key: key);
  final int resultscore;
  final VoidCallback res;
  String get setting {
    String ans = 'you did it';
    if (resultscore < 80) ans = 'good';
    return ans;
  }

  Result(this.resultscore, this.res);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(setting),
          FlatButton(onPressed: res, child: Text('restart quiz'))
        ],
      ),
    );
  }
}
