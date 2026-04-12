part of 'home_bloc.dart';

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.loadCategories() = _LoadCategories;
  const factory HomeEvent.updateAmount(int amount) = _UpdateAmount;
  const factory HomeEvent.updateDifficulty(String? difficulty) =
      _UpdateDifficulty;
  const factory HomeEvent.updateType(String type) = _UpdateType;
  const factory HomeEvent.updateCategory(int? categoryId) = _UpdateCategory;
}
