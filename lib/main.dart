import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void changeQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'what\'s your favorite sports?',
        'answers': ['Wrestling', 'Soccer', 'Swimming', 'Hockey'],
      },
      {
        'questionText': 'what\'s your favorite animals',
        'answers': ['Dog', 'Cat', 'Snake', 'Chicken', 'Dragon'],
      },
      {
        'questionText': 'what\'s your favorite person',
        'answers': ['Phu', 'Huy', 'Tin', 'Lau', 'Tac'],
      }
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('This is my app'),
      ),
      body: Column(
        children: <Widget>[
          Question(questions[_questionIndex]['questionText']),
          ...(questions[_questionIndex]['answers'] as List<String>).map((anwser) {
            return Anwser(changeQuestion, anwser);
          })
        ],
      ),
    ));
  }
}
