import 'package:dartz/dartz.dart';
import 'package:qwiz_app/core/bases/base_usecase/usecase.dart';
import 'package:qwiz_app/core/error/failure.dart';
import 'package:qwiz_app/features/history/domain/entities/history_entity.dart';
import 'package:qwiz_app/features/history/domain/repository/history_repository.dart';

class InsertHistoryUsecase
    implements BaseUsecase<HistoryEntity, HistoryEntity> {
  InsertHistoryUsecase({required HistoryRepository repository})
    : _repository = repository;

  final HistoryRepository _repository;

  @override
  Future<Either<Failure, HistoryEntity>> call(HistoryEntity params) {
    return _repository.insertHistory(params);
  }
}
