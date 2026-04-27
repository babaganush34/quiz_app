import 'package:bloc/bloc.dart';
import 'package:qwiz_app/app/di/inject_module.dart';
import 'package:talker_flutter/talker_flutter.dart';

abstract class BaseBloc<Event, State> extends Bloc<Event, State> {
  final talker = getIt<Talker>();

  BaseBloc(super.initialState) {
    talker.info('Bloc $runtimeType is initialized');
  }

  @override
  void onTransition(Transition<Event, State> transition) {
    talker.info(
      'Переход из ${transition.currentState} в ${transition.nextState}',
    );
    super.onTransition(transition);
  }
}
