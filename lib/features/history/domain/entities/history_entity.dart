class HistoryEntity {
  HistoryEntity({
    this.id,
    required this.score,
    required this.total,
    required this.category,
    required this.difficulty,
    this.date,
  });

  final int? id;
  final int score;
  final int total;
  final String category;
  final String difficulty;
  final DateTime? date;

  HistoryEntity copyWith({
    int? id,
    int? score,
    int? total,
    String? category,
    String? difficulty,
    DateTime? date,
  }) {
    return HistoryEntity(
      id: id ?? this.id,
      score: score ?? this.score,
      total: total ?? this.total,
      category: category ?? this.category,
      difficulty: difficulty ?? this.difficulty,
      date: date ?? this.date,
    );
  }
}
