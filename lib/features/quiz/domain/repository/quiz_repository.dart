import 'package:dartz/dartz.dart';
import 'package:qwiz_app/core/error/failure.dart';
import 'package:qwiz_app/features/home/domain/entities/quiz_params.dart';
import 'package:qwiz_app/features/quiz/domain/entities/question_entity.dart';

abstract class QuizRepository {
  Future<Either<Failure, List<QuestionEntity>>> getQuestions(QuizParams params);
}
