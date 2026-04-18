import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:qwiz_app/core/database/app_database.dart';
import 'package:qwiz_app/core/error/failure.dart';
import 'package:qwiz_app/features/history/domain/entities/history_entity.dart';
import 'package:qwiz_app/features/history/domain/repository/history_repository.dart';

@LazySingleton(as: HistoryRepository)
class HistoryRepositoryImpl implements HistoryRepository {
  HistoryRepositoryImpl({required this.db});

  final AppDatabase db;

  @override
  Future<Either<Failure, HistoryEntity>> insertHistory(HistoryEntity h) async {
    try {
      final id = await db.insertHistory(
        HistoryTableCompanion.insert(
          category: h.category,
          score: h.score,
          total: h.total,
          difficulty: h.difficulty,
          date: DateTime.now(),
        ),
      );
      return Right(h.copyWith(id: id));
    } catch (e) {
      return Left(UnimplementedFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<HistoryEntity>>> getHistory() async {
    try {
      final result = await db.getAllHistory();
      final entities = result
          .map(
            (data) => HistoryEntity(
              id: data.id,
              score: data.score,
              total: data.total,
              category: data.category,
              difficulty: data.difficulty,
              date: data.date,
            ),
          )
          .toList();
      return Right(entities);
    } catch (e) {
      return Left(UnimplementedFailure(message: e.toString()));
    }
  }
}
