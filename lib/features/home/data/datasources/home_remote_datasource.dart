import 'package:dio/dio.dart';
import 'package:qwiz_app/core/constants/app_constants.dart';
import 'package:qwiz_app/core/types/typedef.dart';
import 'package:qwiz_app/features/home/data/models/category_model.dart';

class HomeRemoteDatasource {
  HomeRemoteDatasource(this.dio);
  final Dio dio;
  Future<List<CategoryModel>> getCategories() async {
    final response = await dio.get(AppConstants.baseUrlWithCategory);
    final List<dynamic> rawData = response.data['trivia_categories'];
    final data = rawData.map((e) => CategoryModel.fromJson(e as JSON)).toList();
    return data;
  }
}
