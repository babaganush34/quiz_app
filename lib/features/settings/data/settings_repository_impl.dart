import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:qwiz_app/core/database/app_database.dart';
import 'package:qwiz_app/core/error/failure.dart';
import 'package:qwiz_app/features/settings/domain/repository/settings_repository.dart';

@LazySingleton(as: SettingsRepository)
class SettingsRepositoryImpl implements SettingsRepository {
  SettingsRepositoryImpl({required this.db});

  final AppDatabase db;

  @override
  Future<Either<Failure, Unit>> clearHistory() async {
    try {
      await db.deleteAllHistory();
      return Right(unit);
    } catch (e) {
      return Left(UnimplementedFailure(message: e.toString()));
    }
  }
}
