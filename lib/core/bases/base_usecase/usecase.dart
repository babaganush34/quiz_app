import 'package:dartz/dartz.dart';
import 'package:qwiz_app/core/error/failure.dart';

abstract class BaseUsecase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams {}
