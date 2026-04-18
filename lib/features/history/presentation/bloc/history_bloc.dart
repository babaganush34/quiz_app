import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qwiz_app/core/bases/base_bloc/base_bloc.dart';
import 'package:qwiz_app/core/bases/base_usecase/usecase.dart';
import 'package:qwiz_app/features/history/domain/entities/history_entity.dart';
import 'package:qwiz_app/features/history/domain/usecases/get_history_usecase.dart';
import 'package:qwiz_app/features/history/domain/usecases/insert_history_usecase.dart';

part 'history_event.dart';
part 'history_state.dart';
part 'history_bloc.freezed.dart';

class HistoryBloc extends BaseBloc<HistoryEvent, HistoryState> {
  final GetHistoryUsecase _getHistoryUsecase;
  final InsertHistoryUsecase _insertHistoryUsecase;

  HistoryBloc({
    required GetHistoryUsecase getHistoryUsecase,
    required InsertHistoryUsecase insertHistoryUsecase,
  }) : _getHistoryUsecase = getHistoryUsecase,
       _insertHistoryUsecase = insertHistoryUsecase,
       super(_Initial()) {
    on<_Insert>(_onInsert);
    on<_GetData>(_onGetData);
  }

  Future<void> _onInsert(_Insert event, Emitter<HistoryState> emit) async {
    final result = await _insertHistoryUsecase.call(event.history);
    return result.fold(
      (failure) => emit(HistoryState.error(failure.message)),
      (history) => emit(HistoryState.inserted(history)),
    );
  }

  Future<void> _onGetData(_GetData event, Emitter<HistoryState> emit) async {
    emit(HistoryState.loading());
    final result = await _getHistoryUsecase.call(NoParams());
    result.fold(
      (failure) => emit(HistoryState.error(failure.message)),
      (historyList) => emit(HistoryState.loaded(historyList)),
    );
  }
}
