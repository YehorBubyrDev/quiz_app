import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function setAnswer; 
  final String answerText;

  Answer(this.setAnswer, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: ElevatedButton(
        onPressed: setAnswer,
        child: Text(answerText),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.orange),
        ),
      ),
    );
  }
}
