import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:qwiz_app/core/di/inject_module.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qwiz_app/core/router/app_router.dart';
import 'package:qwiz_app/features/home/domain/entities/quiz_params.dart';
import 'package:qwiz_app/features/quiz/presentation/bloc/quiz_bloc.dart';
import 'package:qwiz_app/features/quiz/presentation/widgets/answer_widget.dart';

@RoutePage()
class QuizPage extends StatefulWidget {
  const QuizPage({
    super.key,
    required this.params,
    required this.currentCategory,
  });
  final QuizParams params;
  final String currentCategory;

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final _bloc = getIt<QuizBloc>();
  Map<String, AnswerStatus> answerStatuses = {};
  List<String> allAnswers = [];
  bool _isAnswering = false;
  bool _showNextButton = false;
  String? _selectedAnswer;

  @override
  void initState() {
    super.initState();
    _bloc.add(QuizEvent.loadQuestions(widget.params));
  }

  void _onAnswerTap(String answer, String correctAnswer) {
    if (_isAnswering) return;

    setState(() {
      _isAnswering = true;
      _selectedAnswer = answer;
      answerStatuses[answer] = AnswerStatus.selected;
    });
    Future.delayed(const Duration(milliseconds: 1000), () {
      if (!mounted) return;
      setState(() {
        for (final a in allAnswers) {
          answerStatuses[a] = a == correctAnswer
              ? AnswerStatus.correct
              : (a == _selectedAnswer
                    ? AnswerStatus.incorrect
                    : AnswerStatus.notSelected);
        }
        _showNextButton = true;
      });
    });
  }

  void _goToNextQuestion() {
    if (_selectedAnswer == null) return;
    _bloc.add(QuizEvent.answerSelected(_selectedAnswer!));
    setState(() {
      answerStatuses = {};
      _isAnswering = false;
      _showNextButton = false;
      _selectedAnswer = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.currentCategory,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () => getIt<AppRouter>().replaceAll([HomeRoute()]),
            icon: const Icon(Icons.home_filled),
          ),
        ],
      ),
      body: BlocConsumer<QuizBloc, QuizState>(
        bloc: _bloc,
        listener: (context, state) {
          state.whenOrNull(
            loadedQuestions: (questions, currentIndex, score) {
              if (questions.isEmpty) return;
              setState(() {
                final correct = questions[currentIndex].correctAnswer;
                final incorrect = questions[currentIndex].incorrectAnswers;
                allAnswers = [correct, ...incorrect]..shuffle();
              });
            },
            finished: (params, score, total) {
              getIt<AppRouter>().replaceAll([
                ResultRoute(total: total, score: score, params: params),
              ]);
            },
          );
        },
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('Initial')),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error) => Center(child: Text(error.toString())),
            loadedQuestions: (questions, currentIndex, score) {
              final currentQuestion = questions[currentIndex];
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment
                      .stretch,
                  children: [
                    LinearProgressIndicator(
                      value: (currentIndex + 1) / questions.length,
                    ),
                    const SizedBox(height: 8),
                    Text('${currentIndex + 1}/${questions.length}'),
                    const SizedBox(height: 24),
                    Text(
                      currentQuestion.question,
                      style: const TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 24),
                    ...allAnswers.map(
                      (answer) => Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: AnswerWidget(
                          answer: answer,
                          status:
                              answerStatuses[answer] ??
                              AnswerStatus.notSelected,
                          onTap: () => _onAnswerTap(
                            answer,
                            currentQuestion.correctAnswer,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    // Кнопка Next
                    if (_showNextButton)
                      NextButtonWidget(onTap: _goToNextQuestion),
                  ],
                ),
              );
            },
            finished: (params, score, total) =>
                const Center(child: Text('Result')),
          );
        },
      ),
    );
  }
}

class NextButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  const NextButtonWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.green,
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Next',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(width: 8),
            Icon(Icons.arrow_forward_ios, color: Colors.white, size: 18),
          ],
        ),
      ),
    );
  }
}
