import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:qwiz_app/core/error/failure.dart';
import 'package:qwiz_app/features/home/domain/entities/quiz_params.dart';
import 'package:qwiz_app/features/quiz/data/datasources/quiz_remote_datasource.dart';
import 'package:qwiz_app/features/quiz/domain/entities/question_entity.dart';
import 'package:qwiz_app/features/quiz/domain/repository/quiz_repository.dart';
import 'package:qwiz_app/main.dart';
import 'package:html_unescape/html_unescape.dart';

@LazySingleton(as: QuizRepository)
class QuizRepositoryImpl extends QuizRepository {
  final QuizRemoteDatasource _remoteDataSource;

  QuizRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, List<QuestionEntity>>> getQuestions(
    QuizParams params,
  ) async {
    try {
      final unescape = HtmlUnescape();
      final rawList = await _remoteDataSource.getQuestions(params);
      final list = rawList
          .map(
            (e) => QuestionEntity(
              correctAnswer: unescape.convert(e.correctAnswer),
              incorrectAnswers: e.incorrectAnswers
                  .map((e) => unescape.convert(e))
                  .toList(),
              question: unescape.convert(e.question),
              difficulty: unescape.convert(e.difficulty!),
              category: unescape.convert(e.category!),
              allAnswers: [e.correctAnswer, e.incorrectAnswers.toString()],
            ),
          )
          .toList();
      return Right(list);
    } on DioException catch (e) {
      return Left(
        ServerFailure(message: e.response?.data['message'] ?? 'Server error'),
      );
    } catch (e, s) {
      talker.handle(e, s);
      return Left(UnimplementedFailure(message: e.toString()));
    }
  }
}
