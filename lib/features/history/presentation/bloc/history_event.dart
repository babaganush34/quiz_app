part of 'history_bloc.dart';

@freezed
class HistoryEvent with _$HistoryEvent {
  const factory HistoryEvent.insert(HistoryEntity history) = _Insert;
  const factory HistoryEvent.getData() = _GetData;
}
