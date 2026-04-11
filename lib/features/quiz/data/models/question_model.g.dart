// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) =>
    _QuestionModel(
      correctAnswers: json['correct_answers'] as String,
      incorrectAnswers: (json['incorrect_answers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      question: json['question'] as String,
      difficulty: json['difficulty'] as String,
      category: json['category'] as String,
    );

Map<String, dynamic> _$QuestionModelToJson(_QuestionModel instance) =>
    <String, dynamic>{
      'correct_answers': instance.correctAnswers,
      'incorrect_answers': instance.incorrectAnswers,
      'question': instance.question,
      'difficulty': instance.difficulty,
      'category': instance.category,
    };
