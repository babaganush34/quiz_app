import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:qwiz_app/core/error/failure.dart';
import 'package:qwiz_app/data/datasources/api_service.dart';
import 'package:qwiz_app/data/models/quiz_model.dart';
import 'package:qwiz_app/domain/repos/quiz_repository.dart';

@LazySingleton(as: QuizRepository)
class QuizRepositoryImpl extends QuizRepository {
  final ApiService apiService;

  QuizRepositoryImpl(this.apiService);

  @override
  Future<Either<Failure, List<QuizModel>>> getQuiz() async {
    try {
      final list = await apiService.getQuiz();
      print('>>> got quiz');
      return Right(list);
    } on DioException catch (e) {
      return Left(
        ServerFailure(message: e.response?.data['message'] ?? 'Server error'),
      );
    } catch (e, s) {
      print(e);
      print(s);
      return Left(UnimplementedFailure(message: e.toString()));
    }
  }
}
