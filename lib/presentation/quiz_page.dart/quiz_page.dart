import 'package:flutter/material.dart';
import 'package:qwiz_app/di/inject_module.dart';
import 'package:qwiz_app/presentation/cubit/quiz_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final cubit = getIt<QuizCubit>()..getQuiz();
  int currentIndex = 0;
  String? selectedAnswer;
  bool answered = false;
  List<String> shuffledAnswers = [];

  void _prepareAnswers(item) {
    shuffledAnswers = [item.correct_answer, ...?item.incorrect_answers]
      ..shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Quiz App',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: BlocBuilder<QuizCubit, QuizState>(
          bloc: cubit,
          builder: (context, state) {
            if (state is Error) {
              return Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ERROR',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.red,
                      ),
                    ),
                    Icon(Icons.error, color: Colors.red, size: 27),
                  ],
                ),
              );
            }
            if (state is Success) {
              final item = state.quizModel[currentIndex];
              if (shuffledAnswers.isEmpty) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  setState(() => _prepareAnswers(item));
                });
              }

              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              'Category:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 150,
                              height: 100,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  side: BorderSide(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                ),
                              ),
                              margin: EdgeInsets.all(1),
                              child: Text(
                                item.category,
                                textAlign: TextAlign.center,
                                maxLines: item.category.length,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Text(
                              'Difficulty:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 150,
                              height: 100,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  side: BorderSide(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                ),
                              ),
                              margin: EdgeInsets.all(1),
                              child: Text(
                                item.difficulty,
                                textAlign: TextAlign.center,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      'Question:',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: BorderSide(color: Colors.black, width: 2),
                        ),
                      ),
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      child: Text(
                        item.question,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    SizedBox(height: 12),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        children: shuffledAnswers.map((answer) {
                          Color color = Colors.grey.shade300;
                          if (answered) {
                            if (answer == item.correct_answer) {
                              color = Colors.green.shade300;
                            } else if (answer == selectedAnswer) {
                              color = Colors.red.shade300;
                            }
                          }
                          return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: color,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            onPressed: answered
                                ? null
                                : () {
                                    setState(() {
                                      selectedAnswer = answer;
                                      answered = true;
                                    });
                                  },
                            child: Text(
                              answer,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    if (answered)
                      ElevatedButton(
                        onPressed: () {
                          if (currentIndex < state.quizModel.length - 1) {
                            setState(() {
                              currentIndex++;
                              selectedAnswer = null;
                              answered = false;
                              shuffledAnswers = [];
                            });
                          } else {
                            showDialog(
                              context: context,
                              builder: (_) => AlertDialog(
                                title: const Text('Quiz Complete!'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      setState(() {
                                        currentIndex = 0;
                                        answered = false;
                                        selectedAnswer = null;
                                      });
                                      cubit.getQuiz();
                                    },
                                    child: const Text('Play Again'),
                                  ),
                                ],
                              ),
                            );
                          }
                        },
                        child: Text(
                          currentIndex < state.quizModel.length - 1
                              ? 'Next'
                              : 'Finish',
                        ),
                      ),
                  ],
                ),
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
