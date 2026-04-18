import 'package:dartz/dartz.dart';
import 'package:qwiz_app/core/error/failure.dart';
import 'package:qwiz_app/features/history/domain/entities/history_entity.dart';

abstract class HistoryRepository {
  Future<Either<Failure, HistoryEntity>> insertHistory(HistoryEntity h);
  Future<Either<Failure, List<HistoryEntity>>> getHistory();
}
