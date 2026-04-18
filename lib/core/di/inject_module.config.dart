// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/history/data/repository_impl/history_repository_impl.dart'
    as _i443;
import '../../features/history/domain/repository/history_repository.dart'
    as _i757;
import '../../features/history/domain/usecases/get_history_usecase.dart'
    as _i840;
import '../../features/history/presentation/bloc/history_bloc.dart' as _i1070;
import '../../features/home/data/datasources/home_remote_datasource.dart'
    as _i278;
import '../../features/home/data/repository_impl/home_repository_impl.dart'
    as _i60;
import '../../features/home/domain/repository/home_repository.dart' as _i541;
import '../../features/home/domain/usecases/get_categories_usecase.dart'
    as _i967;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i202;
import '../../features/quiz/data/datasources/quiz_remote_datasource.dart'
    as _i189;
import '../../features/quiz/data/repository_impl/quiz_repository_impl.dart'
    as _i521;
import '../../features/quiz/domain/repository/quiz_repository.dart' as _i488;
import '../../features/quiz/domain/usecases/get_questions_usecase.dart'
    as _i401;
import '../../features/quiz/presentation/bloc/quiz_bloc.dart' as _i505;
import '../../features/result/data/result_repository_impl.dart' as _i545;
import '../../features/result/domain/repository/result_repository.dart'
    as _i675;
import '../../features/result/domain/usecases/insert_quiz_usecase.dart' as _i90;
import '../../features/result/presentation/bloc/result_bloc.dart' as _i1062;
import '../database/app_database.dart' as _i982;
import '../router/app_router.dart' as _i81;
import 'inject_module.dart' as _i394;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    gh.factory<_i189.QuizRemoteDatasource>(() => _i189.QuizRemoteDatasource());
    gh.singleton<_i982.AppDatabase>(() => appModule.db);
    gh.lazySingleton<_i361.Dio>(() => appModule.dio);
    gh.lazySingleton<_i81.AppRouter>(() => _i81.AppRouter());
    gh.lazySingleton<_i757.HistoryRepository>(
      () => _i443.HistoryRepositoryImpl(db: gh<_i982.AppDatabase>()),
    );
    gh.lazySingleton<_i840.GetHistoryUsecase>(
      () => _i840.GetHistoryUsecase(repository: gh<_i757.HistoryRepository>()),
    );
    gh.lazySingleton<_i675.ResultRepository>(
      () => _i545.ResultRepositoryImpl(db: gh<_i982.AppDatabase>()),
    );
    gh.factory<_i278.HomeRemoteDatasource>(
      () => _i278.HomeRemoteDatasource(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i1070.HistoryBloc>(
      () =>
          _i1070.HistoryBloc(getHistoryUsecase: gh<_i840.GetHistoryUsecase>()),
    );
    gh.lazySingleton<_i488.QuizRepository>(
      () => _i521.QuizRepositoryImpl(gh<_i189.QuizRemoteDatasource>()),
    );
    gh.lazySingleton<_i90.InsertQuizUsecase>(
      () => _i90.InsertQuizUsecase(repository: gh<_i675.ResultRepository>()),
    );
    gh.lazySingleton<_i401.GetQuestionsUsecase>(
      () => _i401.GetQuestionsUsecase(gh<_i488.QuizRepository>()),
    );
    gh.lazySingleton<_i541.HomeRepository>(
      () => _i60.HomeRepositoreImpl(
        remoteDataSource: gh<_i278.HomeRemoteDatasource>(),
      ),
    );
    gh.lazySingleton<_i505.QuizBloc>(
      () =>
          _i505.QuizBloc(getQuestionsUsecase: gh<_i401.GetQuestionsUsecase>()),
    );
    gh.lazySingleton<_i1062.ResultBloc>(
      () => _i1062.ResultBloc(insertQuizUsecase: gh<_i90.InsertQuizUsecase>()),
    );
    gh.lazySingleton<_i967.GetCategoriesUsecase>(
      () => _i967.GetCategoriesUsecase(repository: gh<_i541.HomeRepository>()),
    );
    gh.lazySingleton<_i202.HomeBloc>(
      () => _i202.HomeBloc(
        getCategoriesUsecase: gh<_i967.GetCategoriesUsecase>(),
      ),
    );
    return this;
  }
}

class _$AppModule extends _i394.AppModule {}
