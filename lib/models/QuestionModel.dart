class QuestionModel {
  List<QuestionAnswers> _questions = [
    QuestionAnswers(questionText: 'what\'s your favorite sports?', answers: [
      Answer(anwserText: 'Gaming', score: 1),
      Answer(anwserText: 'Swimming', score: 2),
      Answer(anwserText: 'Soccer', score: 3),
      Answer(anwserText: 'Flying', score: 4),
    ]),
    QuestionAnswers(questionText: 'what\'s your favorite animals', answers: [
      Answer(anwserText: 'Dog', score: 1),
      Answer(anwserText: 'Cat', score: 2),
      Answer(anwserText: 'Bear', score: 3),
      Answer(anwserText: 'Bat', score: 4),
    ]),
    QuestionAnswers(questionText: 'what\'s your favorite person?', answers: [
      Answer(anwserText: 'Phu', score: 1),
      Answer(anwserText: 'Tin', score: 2),
      Answer(anwserText: 'Huy', score: 3),
      Answer(anwserText: 'Tac', score: 4),
    ]),
  ];
  int _questionIndex = 0;
  int _score = 0;
  int get score {
    return _score;
  }

  String getCurrentQuestion() {
    return _questions[_questionIndex].questionText;
  }

  List<Answer> getCurrentQuestionAnswers() {
    return _questions[_questionIndex].answers;
  }

  void answerQuestion(String answerText) {
    _score += _questions[_questionIndex].answers.singleWhere((a) => a.anwserText == answerText).score;
    _questionIndex++;
  }

  bool hasMoreQuestion() {
    return _questionIndex < _questions.length;
  }

  void resetQuestions() {
    _questionIndex = 0;
    _score = 0;
  }
}

class QuestionAnswers {
  final String questionText;
  final List<Answer> answers;

  QuestionAnswers({this.questionText, this.answers});
}

class Answer {
  final String anwserText;
  final int score;
  Answer({this.anwserText, this.score});
}

typedef VoidStringFunc = void Function(String);
typedef VoidNoParamsFunc = void Function();