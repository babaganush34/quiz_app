import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:qwiz_app/core/error/failure.dart';
import 'package:qwiz_app/core/bases/base_usecase/usecase.dart';
import 'package:qwiz_app/features/home/domain/entities/categories_entity.dart';
import 'package:qwiz_app/features/home/domain/repository/home_repository.dart';

@lazySingleton
class GetCategoriesUsecase
    extends BaseUsecase<List<CategoriesEntity>, NoParams> {
  GetCategoriesUsecase({required HomeRepository repository})
    : _repository = repository;

  final HomeRepository _repository;

  @override
  Future<Either<Failure, List<CategoriesEntity>>> call(NoParams params) {
    return _repository.getCategories();
  }
}
