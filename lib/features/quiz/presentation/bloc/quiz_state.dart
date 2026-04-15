part of 'quiz_bloc.dart';

@freezed
sealed class QuizState with _$QuizState {
  const factory QuizState.initial() = _Initial;
  const factory QuizState.loading() = _Loading;
  const factory QuizState.error(Failure failure) = _Error;
  const factory QuizState.loadedQuestions({
    required List<QuestionEntity> questions,
    required int currentIndex,
    required int score,
  }) = _LoadedQuestions;
  const factory QuizState.finished({
    required QuizParams params,
    required int score,
    required int total,
  }) = _Finished;
}
