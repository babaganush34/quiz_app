import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:qwiz_app/core/error/failure.dart';
import 'package:qwiz_app/features/home/data/datasources/home_remote_datasource.dart';
import 'package:qwiz_app/features/home/domain/entities/categories_entity.dart';
import 'package:qwiz_app/features/home/domain/repository/home_repository.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoreImpl implements HomeRepository {
  final HomeRemoteDatasource _remoteDataSource;

  HomeRepositoreImpl({required HomeRemoteDatasource remoteDataSource})
    : _remoteDataSource = remoteDataSource;

  @override
  Future<Either<Failure, List<CategoriesEntity>>> getCategories() async {
    try {
      final result = await _remoteDataSource.getCategories();
      final list = result
          .map((e) => CategoriesEntity(name: e.name, id: e.id))
          .toList();
      return Right(list);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
