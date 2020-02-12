import 'package:flutter/material.dart';

import 'models/QuestionModel.dart';

class Result extends StatelessWidget {
  final int _score;
  final VoidNoParamsFunc _resetQuizHandler;

  String get _textResult {
    return _score < 5 ? 'You sucks!': 'You\'re awesome';
  }

  Result({@required int score, @required VoidNoParamsFunc resetQuizHandler})
      : _score = score,
        _resetQuizHandler = resetQuizHandler;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          'You answered all questions!',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          _score.toString(),
          style: TextStyle(color: Colors.blue, fontSize: 30),
        ),
        Text(
          _textResult,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        RaisedButton(
          child: Text('Reset Quiz!'),
          onPressed: _resetQuizHandler,
        )
      ],
    ));
  }
}
