// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_pages.dart';

class _$AppPages extends RootStackRouter {
  _$AppPages([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    CorePageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CorePage(),
      );
    },
    HomePageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    MovieDetailAuthRoute.name: (routeData) {
      final args = routeData.argsAs<MovieDetailAuthRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: MovieDetailAuth(
          key: args.key,
          id: args.id,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/core',
          fullMatch: true,
        ),
        RouteConfig(
          CorePageRoute.name,
          path: '/core',
        ),
        RouteConfig(
          HomePageRoute.name,
          path: '/home',
        ),
        RouteConfig(
          MovieDetailAuthRoute.name,
          path: '/movieDetail',
        ),
      ];
}

/// generated route for
/// [CorePage]
class CorePageRoute extends PageRouteInfo<void> {
  const CorePageRoute()
      : super(
          CorePageRoute.name,
          path: '/core',
        );

  static const String name = 'CorePageRoute';
}

/// generated route for
/// [HomePage]
class HomePageRoute extends PageRouteInfo<void> {
  const HomePageRoute()
      : super(
          HomePageRoute.name,
          path: '/home',
        );

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [MovieDetailAuth]
class MovieDetailAuthRoute extends PageRouteInfo<MovieDetailAuthRouteArgs> {
  MovieDetailAuthRoute({
    Key? key,
    required String id,
  }) : super(
          MovieDetailAuthRoute.name,
          path: '/movieDetail',
          args: MovieDetailAuthRouteArgs(
            key: key,
            id: id,
          ),
        );

  static const String name = 'MovieDetailAuthRoute';
}

class MovieDetailAuthRouteArgs {
  const MovieDetailAuthRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final String id;

  @override
  String toString() {
    return 'MovieDetailAuthRouteArgs{key: $key, id: $id}';
  }
}
