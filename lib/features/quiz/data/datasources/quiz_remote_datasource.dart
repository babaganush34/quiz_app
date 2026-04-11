import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:qwiz_app/core/constants/app_constants.dart';
import 'package:qwiz_app/core/di/inject_module.dart';
import 'package:qwiz_app/features/home/domain/entities/quiz_params.dart';
import 'package:qwiz_app/features/quiz/data/models/question_model.dart';

@Injectable()
class QuizRemoteDatasource {
  final _dio = getIt<Dio>();

  Future<List<QuestionModel>> getQuestions(QuizParams params) async {
    try {
      final response = await _dio.get(
        AppConstants.baseUrl,
        queryParameters: {
          'amount': params.amount,
          'difficulty': params.difficulty,
          'type': params.type,
          'category': params.categoryId,
        },
      );
      final data = response.data['results'];
      final List<QuestionModel> list = [];
      if (data is List) {
        final list = (data).map((e) => QuestionModel.fromJson(e)).toList();
        return list;
      }
      return list;
    } catch (e, s) {
      print('ERROR-> $e');
      print('Stack-> $s');
      return [];
    }
  }
}
