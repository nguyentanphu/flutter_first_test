import 'package:flutter/material.dart';

import './question.dart';
import 'answer.dart';
import './models/QuestionModel.dart';

class Quiz extends StatelessWidget {
  final QuestionModel _questionList;
  final VoidStringFunc _selectAnswerHandler;

  Quiz({@required QuestionModel questionList, @required Function selectAnswerHandler})
      : _questionList = questionList,
        _selectAnswerHandler = selectAnswerHandler;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(_questionList.getCurrentQuestion()),
        ..._questionList.getCurrentQuestionAnswers().map((answer) {
          return Anwser(
            selectHandler: () => _selectAnswerHandler(answer.anwserText),
            answerText: answer.anwserText,
          );
        })
      ],
    );
  }
}
