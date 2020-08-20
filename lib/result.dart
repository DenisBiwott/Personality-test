import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    var resultText;
    if (resultScore <= 7) {
      resultText = ('You are very docile');
    } else if (resultScore <= 12) {
      resultText = ('You have an average personality');
    } else if (resultScore <= 16) {
      resultText = ('You are pretty bold');
    } else {
      resultText = ('You are dark!');
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            textColor: Colors.blue,
            child: Text('Restart quiz'),
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
