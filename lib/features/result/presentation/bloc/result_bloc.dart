import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:qwiz_app/features/result/domain/entities/result_entity.dart';
import 'package:qwiz_app/features/result/domain/usecases/insert_quiz_usecase.dart';

part 'result_event.dart';
part 'result_state.dart';
part 'result_bloc.freezed.dart';

@lazySingleton
class ResultBloc extends Bloc<ResultEvent, ResultState> {
  final InsertQuizUsecase _insertQuizUsecase;

  ResultBloc({required InsertQuizUsecase insertQuizUsecase})
    : _insertQuizUsecase = insertQuizUsecase,
      super(_Initial()) {
    on<_Insert>(_onInsertQuiz);
  }

  Future<void> _onInsertQuiz(_Insert event, Emitter<ResultState> emit) async {
    final result = await _insertQuizUsecase.call(event.result);
    return result.fold(
      (failure) => emit(ResultState.error(failure.message)),
      (history) => emit(ResultState.inserted(history)),
    );
  }
}
