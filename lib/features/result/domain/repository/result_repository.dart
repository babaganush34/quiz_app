import 'package:dartz/dartz.dart';
import 'package:qwiz_app/core/error/failure.dart';
import 'package:qwiz_app/features/result/domain/entities/result_entity.dart';

abstract class ResultRepository {
  Future<Either<Failure, ResultEntity>> insertQuiz(ResultEntity result);
}
