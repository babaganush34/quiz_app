class QuestionEntity {
  QuestionEntity({
    required this.correctAnswer,
    required this.incorrectAnswers,
    required this.question,
    required this.difficulty,
    required this.category,
  });

  final String correctAnswer;
  final List<String> incorrectAnswers;
  final String question;
  final String difficulty;
  final String category;
}
