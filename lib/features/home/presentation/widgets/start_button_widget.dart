import 'package:flutter/material.dart';
import 'package:qwiz_app/app/di/inject_module.dart';
import 'package:qwiz_app/app/router/app_router.dart';
import 'package:qwiz_app/features/home/domain/entities/quiz_params.dart';

class StartButtonWidget extends StatelessWidget {
  const StartButtonWidget({
    super.key,
    required this.amount,
    required this.difficulty,
    required this.type,
    required this.categoryId,
    required this.category,
  });

  final int amount;
  final String difficulty;
  final String type;
  final int categoryId;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 80, left: 30, right: 30),
      child: InkWell(
        onTap: () {
          getIt<AppRouter>().push(
            QuizRoute(
              params: QuizParams(
                type: type,
                difficulty: difficulty,
                amount: amount,
                categoryId: categoryId,
              ),
              currentCategory: category,
            ),
          );
        },
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.blueAccent,
          ),
          child: Align(
            alignment: AlignmentGeometry.center,
            child: Text(
              'START',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
