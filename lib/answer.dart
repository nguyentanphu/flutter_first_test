import 'package:flutter/material.dart';

import 'models/QuestionModel.dart';

class Anwser extends StatelessWidget {
  final VoidNoParamsFunc _selectHandler;
  final String _answerText;
  Anwser({@required Function selectHandler, @required String answerText}):
    _selectHandler = selectHandler,
    _answerText = answerText;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          color: Colors.blue,
          onPressed: _selectHandler,
          child: Text(_answerText),
        ));
  }
}
