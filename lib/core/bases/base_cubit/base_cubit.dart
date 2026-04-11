import 'package:bloc/bloc.dart';

abstract class BaseCubit<S> extends Cubit<S> {
  BaseCubit(super.initialState);

  void printEmit(S state) {
    print(state.toString());
    emit(state);
  }
}
