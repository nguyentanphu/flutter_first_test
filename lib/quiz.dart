import 'package:flutter/material.dart';

import './question.dart';
import 'answer.dart';
import './models/QuestionList.dart';

class Quiz extends StatelessWidget {
  final QuestionList _questionList;
  final Function _selectAnswerHandler;

  Quiz({@required QuestionList questionList, @required Function selectAnswerHandler})
      : _questionList = questionList,
        _selectAnswerHandler = selectAnswerHandler;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(_questionList.getCurrentQuestion()),
        ..._questionList.getCurrentQuestionAnswers().map((anwser) {
          return Anwser(
            selectHandler: _selectAnswerHandler,
            anwserText: anwser,
          );
        })
      ],
    );
  }
}
