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
      routes: [
        GoRouteData.$route(
          path: 'detail_page',
          name: 'detail_page',
          factory: $ListingDetailPageRouteExtension._fromState,
        ),
      ],
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

extension $ListingDetailPageRouteExtension on ListingDetailPageRoute {
  static ListingDetailPageRoute _fromState(GoRouterState state) =>
      ListingDetailPageRoute(
        state.uri.queryParameters['id']!,
      );

  String get location => GoRouteData.$location(
        '/detail_page',
        queryParams: {
          'id': id,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
