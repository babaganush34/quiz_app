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
      event.when(loadAllCategories: () => _loadAllCategories(emit));
    });
  }

  Future<void> _loadAllCategories(Emitter<HomeState> emit) async {
    emit(HomeState.loading());

    final result = await _getCategoriesUsecase.call(NoParams());

    result.fold(
      (error) => emit(HomeState.error(error)),
      (success) => emit(HomeState.loadedCategories(success)),
    );
  }
}
