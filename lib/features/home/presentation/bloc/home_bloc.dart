import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:qwiz_app/core/bases/base_bloc/base_bloc.dart';
import 'package:qwiz_app/core/bases/base_usecase/usecase.dart';
import 'package:qwiz_app/core/error/failure.dart';
import 'package:qwiz_app/features/home/domain/entities/categories_entity.dart';
import 'package:qwiz_app/features/home/domain/usecases/get_categories_usecase.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@lazySingleton
class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  final GetCategoriesUsecase _getCategoriesUsecase;

  HomeBloc({required GetCategoriesUsecase getCategoriesUsecase})
    : _getCategoriesUsecase = getCategoriesUsecase,
      super(HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      await event.map(
        loadCategories: (_) => _onLoadCategories(emit),
        updateAmount: (e) async => _onUpdate(emit, amount: e.amount),
        updateDifficulty: (e) async =>
            _onUpdate(emit, difficulty: e.difficulty),
        updateType: (e) async => _onUpdate(emit, type: e.type),
        updateCategory: (e) async => _onUpdate(emit, categoryId: e.categoryId),
      );
    });
  }

  Future<void> _onLoadCategories(Emitter<HomeState> emit) async {
    talker.info('LoadCategories Started');
    emit(HomeState.loading());

    final result = await _getCategoriesUsecase.call(NoParams());
    talker.info('Result: $result');

    result.fold(
      (error) {
        talker.error('Error: $error');
        emit(HomeState.error(error));
      },
      (success) {
        talker.info('Got Categories: ${success.length}');
        emit(HomeState.loadedCategories(categories: success));
      },
    );
  }

  void _onUpdate(
    Emitter<HomeState> emit, {
    int? amount,
    String? difficulty,
    String? type,
    int? categoryId,
  }) {
    final s = state;
    if (s is! _LoadedCategories) return;

    emit(
      HomeState.loadedCategories(
        categories: s.categories,
        amount: amount ?? s.amount,
        difficulty: difficulty ?? s.difficulty,
        type: type ?? s.type,
        categoryId: categoryId ?? s.categoryId,
      ),
    );
  }
}
