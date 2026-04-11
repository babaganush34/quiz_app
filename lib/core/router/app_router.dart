import 'package:injectable/injectable.dart';
import 'package:auto_route/auto_route.dart';
import 'package:qwiz_app/core/router/talker_page/talker_page.dart';
import 'package:qwiz_app/features/home/presentation/pages/home_page.dart';
import 'package:qwiz_app/features/quiz/presentation/pages/quiz_page.dart';
import 'package:qwiz_app/features/results/presentation/pages/results_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
@lazySingleton
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: QuizRoute.page),
    AutoRoute(page: ResultsRoute.page),
    AutoRoute(page: TalkerRoute.page),
  ];
}
