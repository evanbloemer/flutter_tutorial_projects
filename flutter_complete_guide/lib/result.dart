import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 3) {
      resultText = 'Perfect choices! You pass with an A+!';
    } else if (resultScore <= 6) {
      resultText = 'Good answers! You pass with an A!';
    } else if (resultScore <= 8) {
      resultText = 'Decent choices! You pass with a B.';
    } else if (resultScore <= 12) {
      resultText = 'Not bad choices! You pass with a C.';
    } else {
      resultText = 'Terrible choices... You fail.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
