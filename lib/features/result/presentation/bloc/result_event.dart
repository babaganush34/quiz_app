part of 'result_bloc.dart';

@freezed
abstract class ResultEvent with _$ResultEvent {
  const factory ResultEvent.insert(ResultEntity result, int score, int total) =
      _Insert;
}
