// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $shellPageRoute,
    ];

RouteBase get $shellPageRoute => GoRouteData.$route(
      path: '/',
      factory: $ShellPageRouteExtension._fromState,
    );

extension $ShellPageRouteExtension on ShellPageRoute {
  static ShellPageRoute _fromState(GoRouterState state) => ShellPageRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
