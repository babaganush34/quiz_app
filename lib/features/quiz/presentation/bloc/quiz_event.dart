part of 'quiz_bloc.dart';

@freezed
sealed class QuizEvent with _$QuizEvent {
  const factory QuizEvent.loadQuestions(QuizParams params) = _LoadQuestions;
  const factory QuizEvent.answerSelected(String answer) = _AnswerSelected;
}
