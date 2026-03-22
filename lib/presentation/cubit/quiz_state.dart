part of 'quiz_cubit.dart';

@immutable
sealed class QuizState {}

final class QuizInitial extends QuizState {}

final class Loading extends QuizState {}

final class Error extends QuizState {
  final String error;

  Error(this.error);
}

final class Success extends QuizState {
  Success({required this.quizModel});

  final List<QuizModel> quizModel;
}
