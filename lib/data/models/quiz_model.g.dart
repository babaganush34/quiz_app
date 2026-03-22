// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuizModel _$QuizModelFromJson(Map<String, dynamic> json) => QuizModel(
  json['difficulty'] as String,
  json['question'] as String,
  json['category'] as String,
  json['correct_answer'] as String,
  incorrect_answers:
      (json['incorrect_answers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
);

Map<String, dynamic> _$QuizModelToJson(QuizModel instance) => <String, dynamic>{
  'difficulty': instance.difficulty,
  'question': instance.question,
  'category': instance.category,
  'correct_answer': instance.correct_answer,
  'incorrect_answers': instance.incorrect_answers,
};
