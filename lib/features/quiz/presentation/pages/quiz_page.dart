import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:qwiz_app/core/di/inject_module.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qwiz_app/features/quiz/presentation/bloc/quiz_bloc.dart';

@RoutePage()
class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final _bloc = getIt<QuizBloc>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // body: BlocBuilder<QuizBloc, QuizState>(
        //   bloc: _bloc,
        //   builder: (context, state) {
        //     return state.when(
        //       initial: () => const SizedBox(),
        //       loading: () => const Center(child: CircularProgressIndicator()),
        //       error: (error) => Center(child: Text(error.toString())),
        //       activeSession: () {},
        //       finished: () {},
        //     );
        //   },
        // ),
      ),
    );
  }
}
