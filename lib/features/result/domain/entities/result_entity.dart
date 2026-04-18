class ResultEntity {
  ResultEntity({
    required this.score,
    required this.total,
    required this.difficulty,
    this.category,
    this.date,
    this.id,
  });

  final int? id;
  final int total;
  final String difficulty;
  final String? category;
  final DateTime? date;
  final int score;

  ResultEntity copyWith({
    int? id,
    int? score,
    int? total,
    String? category,
    String? difficulty,
    DateTime? date,
  }) {
    return ResultEntity(
      id: id ?? this.id,
      score: score ?? this.score,
      total: total ?? this.total,
      category: category ?? this.category,
      difficulty: difficulty ?? this.difficulty,
      date: date ?? this.date,
    );
  }
}
