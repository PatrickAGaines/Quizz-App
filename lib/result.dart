import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function handleReset;

  Result(this.resultScore, this.handleReset);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'You are a horrible person.';
    } else if (resultScore <= 12) {
      resultText = 'You are a horrible, horrible person.';
    } else if (resultScore <= 16) {
      resultText = 'You suck';
    } else {
      resultText = 'You okay.';
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
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            textColor: Colors.blue,
            onPressed: handleReset,
          ),
        ],
      ),
    );
  }
}
