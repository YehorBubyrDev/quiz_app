import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultText {
    String lessOrEquel12 =
        'Not bad, but let\'s try again, your score is $totalScore!';
    String lessOrEquel24 =
        'Yeah it\'s good, but at my mind you can do better, your score is $totalScore!';
    String lessOrEquel36 = 'Wow great, your score is $totalScore!!';
    String lessOrEquel48 =
        'Almost bigger result, you are alomost a king, your score is $totalScore!!!';
    String lessOrEquel60 =
        'Binngo-o-o-o-o-o, one of the best result, your score is $totalScore!!!!!';
    if (totalScore <= 12) {
      return lessOrEquel12;
    } else if (totalScore <= 24) {
      return lessOrEquel24;
    } else if (totalScore <= 36) {
      return lessOrEquel36;
    } else if (totalScore <= 48) {
      return lessOrEquel48;
    } else if (totalScore <= 60) {
      return lessOrEquel60;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultText,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.lightGreen, onPrimary: Colors.white),
            onPressed: () => resetQuiz(),
            child: Text('Reset Quiz!'),
          )
        ],
      ),
    );
  }
}
