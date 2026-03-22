// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../data/datasources/api_service.dart' as _i630;
import '../data/repository/quiz_repository_impl.dart' as _i75;
import '../domain/repos/quiz_repository.dart' as _i135;
import '../domain/usecases/get_quiz_usecase.dart' as _i619;
import '../presentation/cubit/quiz_cubit.dart' as _i265;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i630.ApiService>(() => _i630.ApiService());
    gh.lazySingleton<_i135.QuizRepository>(
      () => _i75.QuizRepositoryImpl(gh<_i630.ApiService>()),
    );
    gh.lazySingleton<_i619.GetQuizUsecase>(
      () => _i619.GetQuizUsecase(gh<_i135.QuizRepository>()),
    );
    gh.factory<_i265.QuizCubit>(
      () => _i265.QuizCubit(getQuizUsecase: gh<_i619.GetQuizUsecase>()),
    );
    return this;
  }
}
