part of 'home_bloc.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState.initial({
    @Default(10) int amount,
    @Default('medium') String difficulty,
    @Default('multiple') String type,
    int? categoryId,
  }) = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.error(Failure failure) = _Error;
  const factory HomeState.loadedCategories(List<CategoriesEntity> categories) =
      _LoadedCategories;
}
