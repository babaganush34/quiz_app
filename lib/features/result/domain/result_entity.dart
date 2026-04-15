class ResultEntity {
  ResultEntity({
    required this.score,
    required this.total,
    required this.difficulty,
    required this.category,
    required this.date,
  });

  final int total;
  final String difficulty;
  final String? category;
  final DateTime date;
  final int score;
}
