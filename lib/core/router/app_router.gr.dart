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
/// [MapPage]
class MapRoute extends PageRouteInfo<void> {
  const MapRoute({List<PageRouteInfo>? children})
    : super(MapRoute.name, initialChildren: children);

  static const String name = 'MapRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MapPage();
    },
  );
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfilePage();
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
/// [ResultsPage]
class ResultsRoute extends PageRouteInfo<void> {
  const ResultsRoute({List<PageRouteInfo>? children})
    : super(ResultsRoute.name, initialChildren: children);

  static const String name = 'ResultsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ResultsPage();
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
