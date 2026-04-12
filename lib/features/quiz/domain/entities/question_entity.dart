class QuestionEntity {
  QuestionEntity({
    required this.correctAnswer,
    required this.incorrectAnswers,
    required this.question,
    required this.difficulty,
    required this.category,
    required this.allAnswers,
  });

  final String correctAnswer;
  final List<String> incorrectAnswers;
  final List<String> allAnswers;
  final String question;
  final String difficulty;
  final String category;
}
