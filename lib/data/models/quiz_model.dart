import 'package:json_annotation/json_annotation.dart';

part 'quiz_model.g.dart';

@JsonSerializable()
class QuizModel {
  final String difficulty;
  final String question;
  final String category;
  final String correct_answer;
  final List<String>? incorrect_answers;

  QuizModel(
    this.difficulty,
    this.question,
    this.category,
    this.correct_answer, {
    this.incorrect_answers = const [],
  });

  factory QuizModel.fromJson(Map<String, dynamic> json) =>
      _$QuizModelFromJson(json);
}
