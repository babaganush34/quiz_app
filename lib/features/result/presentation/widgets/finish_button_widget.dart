import 'package:flutter/material.dart';
import 'package:qwiz_app/core/di/inject_module.dart';
import 'package:qwiz_app/core/router/app_router.dart';
import 'package:qwiz_app/features/result/domain/entities/result_entity.dart';
import 'package:qwiz_app/features/result/presentation/bloc/result_bloc.dart';

class FinishButtonWidget extends StatelessWidget {
  const FinishButtonWidget({
    super.key,
    required this.bloc,
    required this.score,
    required this.total,
    required this.entity,
  });
  final ResultBloc bloc;
  final ResultEntity entity;
  final int score;
  final int total;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        bloc.add(ResultEvent.insert(entity, score, total));
        getIt<AppRouter>().replaceAll([HistoryRoute()]);
      },
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.green,
        ),
        child: Align(
          alignment: AlignmentGeometry.center,
          child: Text(
            'Finish',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
