import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:qwiz_app/core/bases/base_usecase/usecase.dart';
import 'package:qwiz_app/app/di/inject_module.dart';
import 'package:qwiz_app/features/history/presentation/bloc/history_bloc.dart';
import 'package:qwiz_app/features/settings/domain/usecases/clear_history_usecase.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

@lazySingleton
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final ClearHistoryUsecase _clearHistoryUsecase;

  SettingsBloc({required ClearHistoryUsecase clearHistoryUsecase})
    : _clearHistoryUsecase = clearHistoryUsecase,
      super(_Initial()) {
    on<_ClearedHistory>(_onClearHistory);
  }

  Future<void> _onClearHistory(event, Emitter<SettingsState> emit) async {
    emit(SettingsState.loading());
    final result = await _clearHistoryUsecase.call(NoParams());
    result.fold((error) => emit(SettingsState.error(error.message)), (_) {
      emit(SettingsState.cleared());
      getIt<HistoryBloc>().add(HistoryEvent.getData());
    });
  }
}
