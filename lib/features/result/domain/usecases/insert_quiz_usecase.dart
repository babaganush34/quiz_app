import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:qwiz_app/core/bases/base_usecase/usecase.dart';
import 'package:qwiz_app/core/error/failure.dart';
import 'package:qwiz_app/features/result/domain/entities/result_entity.dart';
import 'package:qwiz_app/features/result/domain/repository/result_repository.dart';

@lazySingleton
class InsertQuizUsecase implements BaseUsecase<ResultEntity, ResultEntity> {
  InsertQuizUsecase({required ResultRepository repository})
    : _repository = repository;

  final ResultRepository _repository;

  @override
  Future<Either<Failure, ResultEntity>> call(ResultEntity params) {
    return _repository.insertQuiz(params);
  }
}
