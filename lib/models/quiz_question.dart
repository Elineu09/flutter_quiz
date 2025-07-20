class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> get shuffledAnswers {
    final shuffledAnswers = List.of(answers); // creates a copy of the list answers
    shuffledAnswers.shuffle(); // shuffles the value of the copy of the list created
    return shuffledAnswers;
  }
}
