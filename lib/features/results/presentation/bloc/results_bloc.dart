import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'results_event.dart';
part 'results_state.dart';
part 'results_bloc.freezed.dart';

class ResultsBloc extends Bloc<ResultsEvent, ResultsState> {
  ResultsBloc() : super(_Initial()) {
    on<ResultsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
