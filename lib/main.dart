import 'package:flutter/material.dart';
import 'package:flutter_first_test/quiz.dart';

import './models/QuestionList.dart';
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
  static final _questionList = QuestionList();

  void changeQuestion() {
    setState(() {
      _questionList.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('This is my app'),
      ),
      body: _questionList.hasMoreQuestion()
          ? Quiz(questionList: _questionList, selectAnswerHandler: changeQuestion,)
          : Center(
              child: Text('You answered all questions!'),
            ),
    ));
  }
}
