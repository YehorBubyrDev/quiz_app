import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 2},
        {'text': 'Green', 'score': 4},
        {'text': 'Blue', 'score': 6},
        {'text': 'Orange', 'score': 8},
        {'text': 'Red', 'score': 10}
      ],
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 2},
        {'text': 'Dog', 'score': 4},
        {'text': 'Snake', 'score': 6},
        {'text': 'Spider', 'score': 8},
        {'text': 'T-Rex', 'score': 10}
      ],
    },
    {
      'question': 'What\'s your favorite country?',
      'answers': [
        {'text': 'Ukraine', 'score': 2},
        {'text': 'Canada', 'score': 4},
        {'text': 'United Kingdom', 'score': 6},
        {'text': 'Italy', 'score': 8},
        {'text': 'USA', 'score': 10}
      ],
    },
    {
      'question': 'What\'s your favorite city?',
      'answers': [
        {'text': 'Kharkiv', 'score': 2},
        {'text': 'Kyiv', 'score': 4},
        {'text': 'Dnipro', 'score': 6},
        {'text': 'Kherson', 'score': 8},
        {'text': 'Lviv', 'score': 10}
      ],
    },
    {
      'question': 'What\'s your favorite president?',
      'answers': [
        {'text': 'Zelensky', 'score': 2},
        {'text': 'Zelensky', 'score': 4},
        {'text': 'Zelensky', 'score': 6},
        {'text': 'Zelensky', 'score': 8},
        {'text': 'Zelensky', 'score': 10}
      ],
    },
    {
      'question': 'What\'s your favorite season?',
      'answers': [
        {'text': 'Winter', 'score': 2},
        {'text': 'Spring', 'score': 4},
        {'text': 'Summer', 'score': 6},
        {'text': 'Fall', 'score': 8},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _setAnswer(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    _totalScore += score;
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                setAnswer: _setAnswer,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
