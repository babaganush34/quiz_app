import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:qwiz_app/data/models/quiz_model.dart';

@Injectable()
class ApiService {
  final _dio = Dio();

  Future<List<QuizModel>> getQuiz() async {
    try{

    final response = await _dio.get(
      'https://opentdb.com/api.php?amount=10&type=multiple',
    );
    print('LOADED');
    final data = response.data['results'];
    print("DATA-> $data");
    final List<QuizModel> list = [];
    if (data is List) {
      final list = (data).map((e) => QuizModel.fromJson(e)).toList();
      return list;
    }
    print('FIRST');
    return list;
    }catch(e,s){
      print('ERROR-> $e');
      print('Stack-> $s');
      return [];
    }

  
  }
}
