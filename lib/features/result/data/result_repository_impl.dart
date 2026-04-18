import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:qwiz_app/core/database/app_database.dart';
import 'package:qwiz_app/core/error/failure.dart';
import 'package:qwiz_app/features/result/domain/entities/result_entity.dart';
import 'package:qwiz_app/features/result/domain/repository/result_repository.dart';

@LazySingleton(as: ResultRepository)
class ResultRepositoryImpl implements ResultRepository {
  ResultRepositoryImpl({required this.db});

  final AppDatabase db;

  @override
  Future<Either<Failure, ResultEntity>> insertQuiz(ResultEntity result) async {
    try {
      final id = await db.insertHistory(
        HistoryTableCompanion.insert(
          category: result.category!,
          score: result.score,
          total: result.total,
          difficulty: result.difficulty,
          date: DateTime.now(),
        ),
      );
      return Right(result.copyWith(id: id));
    } catch (e) {
      return Left(UnimplementedFailure(message: e.toString()));
    }
  }
}
