import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:qwiz_app/core/bases/base_bloc/base_bloc.dart';
import 'package:qwiz_app/core/error/failure.dart';
import 'package:qwiz_app/features/home/domain/entities/quiz_params.dart';
import 'package:qwiz_app/features/quiz/domain/entities/question_entity.dart';
import 'package:qwiz_app/features/quiz/domain/usecases/get_questions_usecase.dart';

part 'quiz_event.dart';
part 'quiz_state.dart';
part 'quiz_bloc.freezed.dart';

@lazySingleton
class QuizBloc extends BaseBloc<QuizEvent, QuizState> {
  final GetQuestionsUsecase _getQuestionsUsecase;
  late QuizParams _currentParams;

  QuizBloc({required GetQuestionsUsecase getQuestionsUsecase})
    : _getQuestionsUsecase = getQuestionsUsecase,
      super(_Initial()) {
    on<QuizEvent>((event, emit) async {
      await event.map(
        loadQuestions: (e) async => _onLoadQuestions(e.params, emit),
        answerSelected: (e) async => _onAnswerSelected(e.answer, emit),
      );
    });
  }

  Future<void> _onLoadQuestions(
    QuizParams params,
    Emitter<QuizState> emit,
  ) async {
    emit(QuizState.loading());
    _currentParams = params;
    final result = await _getQuestionsUsecase.call(params);
    result.fold(
      (error) => emit(QuizState.error(error)),
      (questions) => emit(
        QuizState.loadedQuestions(
          questions: questions,
          currentIndex: 0,
          score: 0,
        ),
      ),
    );
  }

  void _onAnswerSelected(String answer, Emitter<QuizState> emit) {
    final current = state as _LoadedQuestions;

    final isCorrect =
        answer == current.questions[current.currentIndex].correctAnswer;
    final newScore = isCorrect ? current.score + 1 : current.score;
    final nextIndex = current.currentIndex + 1;

    if (nextIndex >= current.questions.length) {
      emit(
        QuizState.finished(
          score: newScore,
          total: current.questions.length,
          params: _currentParams,
        ),
      );
    } else {
      emit(
        QuizState.loadedQuestions(
          questions: current.questions,
          currentIndex: nextIndex,
          score: newScore,
        ),
      );
    }
  }
}
