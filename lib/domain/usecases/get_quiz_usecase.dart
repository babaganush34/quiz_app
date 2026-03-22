import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:qwiz_app/core/error/failure.dart';
import 'package:qwiz_app/core/usecase/usecase.dart';
import 'package:qwiz_app/data/models/quiz_model.dart';
import 'package:qwiz_app/domain/repos/quiz_repository.dart';

@lazySingleton
class GetQuizUsecase implements Usecase<List<QuizModel>, void> {
  final QuizRepository repository;

  GetQuizUsecase(this.repository);

  @override
  Future<Either<Failure, List<QuizModel>>> call(params) {
    print('>>> got usecase');
    return repository.getQuiz();
  }
}
