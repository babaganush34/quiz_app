// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [BottomNavigationPage]
class BottomNavigationRoute extends PageRouteInfo<void> {
  const BottomNavigationRoute({List<PageRouteInfo>? children})
    : super(BottomNavigationRoute.name, initialChildren: children);

  static const String name = 'BottomNavigationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BottomNavigationPage();
    },
  );
}

/// generated route for
/// [HistoryPage]
class HistoryRoute extends PageRouteInfo<void> {
  const HistoryRoute({List<PageRouteInfo>? children})
    : super(HistoryRoute.name, initialChildren: children);

  static const String name = 'HistoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HistoryPage();
    },
  );
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [QuizPage]
class QuizRoute extends PageRouteInfo<QuizRouteArgs> {
  QuizRoute({
    Key? key,
    required QuizParams params,
    required String currentCategory,
    List<PageRouteInfo>? children,
  }) : super(
         QuizRoute.name,
         args: QuizRouteArgs(
           key: key,
           params: params,
           currentCategory: currentCategory,
         ),
         initialChildren: children,
       );

  static const String name = 'QuizRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<QuizRouteArgs>();
      return QuizPage(
        key: args.key,
        params: args.params,
        currentCategory: args.currentCategory,
      );
    },
  );
}

class QuizRouteArgs {
  const QuizRouteArgs({
    this.key,
    required this.params,
    required this.currentCategory,
  });

  final Key? key;

  final QuizParams params;

  final String currentCategory;

  @override
  String toString() {
    return 'QuizRouteArgs{key: $key, params: $params, currentCategory: $currentCategory}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! QuizRouteArgs) return false;
    return key == other.key &&
        params == other.params &&
        currentCategory == other.currentCategory;
  }

  @override
  int get hashCode => key.hashCode ^ params.hashCode ^ currentCategory.hashCode;
}

/// generated route for
/// [ResultPage]
class ResultRoute extends PageRouteInfo<ResultRouteArgs> {
  ResultRoute({
    Key? key,
    required QuizParams params,
    required int score,
    required int total,
    List<PageRouteInfo>? children,
  }) : super(
         ResultRoute.name,
         args: ResultRouteArgs(
           key: key,
           params: params,
           score: score,
           total: total,
         ),
         initialChildren: children,
       );

  static const String name = 'ResultRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ResultRouteArgs>();
      return ResultPage(
        key: args.key,
        params: args.params,
        score: args.score,
        total: args.total,
      );
    },
  );
}

class ResultRouteArgs {
  const ResultRouteArgs({
    this.key,
    required this.params,
    required this.score,
    required this.total,
  });

  final Key? key;

  final QuizParams params;

  final int score;

  final int total;

  @override
  String toString() {
    return 'ResultRouteArgs{key: $key, params: $params, score: $score, total: $total}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ResultRouteArgs) return false;
    return key == other.key &&
        params == other.params &&
        score == other.score &&
        total == other.total;
  }

  @override
  int get hashCode =>
      key.hashCode ^ params.hashCode ^ score.hashCode ^ total.hashCode;
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SettingsPage();
    },
  );
}

/// generated route for
/// [TalkerPage]
class TalkerRoute extends PageRouteInfo<void> {
  const TalkerRoute({List<PageRouteInfo>? children})
    : super(TalkerRoute.name, initialChildren: children);

  static const String name = 'TalkerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TalkerPage();
    },
  );
}
