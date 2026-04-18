import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:qwiz_app/core/bases/base_bloc/base_bloc.dart';
import 'package:qwiz_app/core/bases/base_usecase/usecase.dart';
import 'package:qwiz_app/features/history/domain/entities/history_entity.dart';
import 'package:qwiz_app/features/history/domain/usecases/get_history_usecase.dart';

part 'history_event.dart';
part 'history_state.dart';
part 'history_bloc.freezed.dart';

@lazySingleton
class HistoryBloc extends BaseBloc<HistoryEvent, HistoryState> {
  final GetHistoryUsecase _getHistoryUsecase;

  HistoryBloc({
    required GetHistoryUsecase getHistoryUsecase,
  }) : _getHistoryUsecase = getHistoryUsecase,
       super(_Initial()) {
    on<_GetData>(_onGetData);
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
