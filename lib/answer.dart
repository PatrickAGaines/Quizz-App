import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handleSelect;
  final String answerText;

  Answer(this.handleSelect, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // ignore: deprecated_member_use
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: handleSelect,
      ),
    );
  }
}
