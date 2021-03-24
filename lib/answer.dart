import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handleSelect;
  final String answerText;

  Answer(this.handleSelect, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: handleSelect,
      ),
    );
  }
}
