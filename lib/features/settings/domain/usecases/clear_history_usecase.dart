import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:qwiz_app/core/bases/base_usecase/usecase.dart';
import 'package:qwiz_app/core/error/failure.dart';
import 'package:qwiz_app/features/settings/domain/repository/settings_repository.dart';

@lazySingleton
class ClearHistoryUsecase implements BaseUsecase<Unit, NoParams> {
  ClearHistoryUsecase({required SettingsRepository repository})
    : _repository = repository;

  final SettingsRepository _repository;

  @override
  Future<Either<Failure, Unit>> call(NoParams params) {
    return _repository.clearHistory();
  }
}
