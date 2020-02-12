import 'package:flutter/material.dart';
import 'package:flutter_first_test/quiz.dart';

import './models/QuestionModel.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static final _questionList = QuestionModel();

  void answerQuestion(String answerText) {
    setState(() {
      _questionList.answerQuestion(answerText);
    });
  }

  void resetQuestions() {
    setState(() {
      _questionList.resetQuestions();
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
          ? Quiz(questionList: _questionList, selectAnswerHandler: answerQuestion,)
          : Result(score: _questionList.score, resetQuizHandler: resetQuestions,),
    ));
  }
}
