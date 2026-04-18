import 'package:dartz/dartz.dart';
import 'package:qwiz_app/core/error/failure.dart';

abstract class SettingsRepository {
  Future<Either<Failure, Unit>> clearHistory();
}