import 'package:dartz/dartz.dart';
import 'package:qwiz_app/core/error/failure.dart';
import 'package:qwiz_app/data/models/quiz_model.dart';

abstract class QuizRepository {
  Future<Either<Failure, List<QuizModel>>> getQuiz();
}
