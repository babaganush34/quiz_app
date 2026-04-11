import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qwiz_app/core/types/typedef.dart';

part 'question_model.freezed.dart';
part 'question_model.g.dart';

@freezed
abstract class QuestionModel with _$QuestionModel {
  const factory QuestionModel({
    @JsonKey(name: 'correct_answers') required String correctAnswers,
    @JsonKey(name: 'incorrect_answers') required List<String> incorrectAnswers,
    required String question,
    required String difficulty,
    required String category,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(JSON json) => _$QuestionModelFromJson(json);
}
