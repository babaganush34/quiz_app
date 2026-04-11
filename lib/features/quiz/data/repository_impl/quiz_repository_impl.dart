import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:qwiz_app/core/bases/base_usecase/usecase.dart';
import 'package:qwiz_app/core/error/failure.dart';
import 'package:qwiz_app/features/home/domain/entities/quiz_params.dart';
import 'package:qwiz_app/features/quiz/data/datasources/quiz_remote_datasource.dart';
import 'package:qwiz_app/features/quiz/domain/entities/question_entity.dart';
import 'package:qwiz_app/features/quiz/domain/repository/quiz_repository.dart';

@LazySingleton(as: QuizRepository)
class QuizRepositoryImpl extends QuizRepository {
  final QuizRemoteDatasource _remoteDataSource;

  QuizRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, List<QuestionEntity>>> getQuestions(
    QuizParams params,
  ) async {
    try {
      final rawList = await _remoteDataSource.getQuestions(params);
      final list = rawList
          .map(
            (e) => QuestionEntity(
              correctAnswer: e.correctAnswers,
              incorrectAnswers: e.incorrectAnswers,
              question: e.question,
              difficulty: e.difficulty,
              category: e.category,
            ),
          )
          .toList();
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
