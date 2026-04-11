import 'package:dartz/dartz.dart';
import 'package:qwiz_app/core/error/failure.dart';
import 'package:qwiz_app/features/home/domain/entities/categories_entity.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<CategoriesEntity>>> getCategories();
}
