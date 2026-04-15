import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:qwiz_app/core/constants/app_constants.dart';
import 'package:qwiz_app/features/home/domain/entities/quiz_params.dart';

@RoutePage()
class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.params,
    required this.score,
    required this.total,
  });
  final QuizParams params;
  final int score;
  final int total;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Result')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: AlignmentGeometry.topCenter,
            child: Image.asset(AppConstants.quizDoneMarkImage),
          ),
          const SizedBox(height: 20),
          Container(
            margin: EdgeInsets.all(12),
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: [
                Text('Category: ${params.categoryId}'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [Text('Difficulty:'), Text(params.difficulty)],
                    ),
                    Column(
                      children: [
                        Text('Correct answers:'),
                        Text('$score/$total'),
                      ],
                    ),
                    Column(
                      children: [Text('Difficulty:'), Text(params.difficulty)],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
