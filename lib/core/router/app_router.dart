import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:auto_route/auto_route.dart';
import 'package:qwiz_app/core/router/bottom_navigation/bottom_navigation_page.dart';
import 'package:qwiz_app/core/router/talker_page/talker_page.dart';
import 'package:qwiz_app/features/home/domain/entities/quiz_params.dart';
import 'package:qwiz_app/features/home/presentation/pages/home_page.dart';
import 'package:qwiz_app/features/map/presentation/pages/map_page.dart';
import 'package:qwiz_app/features/profile/presentation/pages/profile_page.dart';
import 'package:qwiz_app/features/quiz/presentation/pages/quiz_page.dart';
import 'package:qwiz_app/features/results/presentation/pages/results_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
@lazySingleton
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: QuizRoute.page),
    AutoRoute(page: ResultsRoute.page),
    AutoRoute(page: TalkerRoute.page),
    AutoRoute(
      page: BottomNavigationRoute.page,
      initial: true,
      children: [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: MapRoute.page),
        AutoRoute(page: ProfileRoute.page),
      ],
    ),
  ];
}
