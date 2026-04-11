class QuizParams {
  QuizParams({
    required this.type,
    required this.difficulty,
    required this.amount,
    this.categoryId,
  });

  final String type;
  final String difficulty;
  final int? categoryId;
  final int amount;
}
