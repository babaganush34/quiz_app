import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:qwiz_app/core/error/failure.dart';
import 'package:qwiz_app/core/bases/base_usecase/usecase.dart';
import 'package:qwiz_app/features/home/domain/entities/quiz_params.dart';
import 'package:qwiz_app/features/quiz/domain/entities/question_entity.dart';
import 'package:qwiz_app/features/quiz/domain/repository/quiz_repository.dart';

@lazySingleton
class GetQuestionsUsecase implements BaseUsecase<List<QuestionEntity>, QuizParams> {
  final QuizRepository repository;

  GetQuestionsUsecase(this.repository);

  @override
  Future<Either<Failure, List<QuestionEntity>>> call(params) {
    return repository.getQuestions(params);
  }
}
