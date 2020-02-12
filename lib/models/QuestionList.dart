class QuestionList {
  List<QuestionAnswers> _questions = [
    QuestionAnswers(questionText: 'what\'s your favorite sports?', answers: ['Wrestling', 'Soccer', 'Swimming', 'Hockey']),
    QuestionAnswers(questionText: 'what\'s your favorite animals', answers: ['Dog', 'Cat', 'Snake', 'Chicken', 'Dragon']),
    QuestionAnswers(questionText: 'what\'s your favorite person?', answers: ['Phu', 'Huy', 'Tin', 'Lau', 'Tac']),
  ];
  int _questionIndex = 0;

  String getCurrentQuestion() {
    return _questions[_questionIndex].questionText;
  }
  List<String> getCurrentQuestionAnswers() {
    return _questions[_questionIndex].answers;
  }
  void nextQuestion() {
    _questionIndex++;
  }
  bool hasMoreQuestion() {
    return _questionIndex < _questions.length;
  }
}

class QuestionAnswers {
  final String questionText;
  final List<String> answers;

  QuestionAnswers({this.questionText, this.answers});
}