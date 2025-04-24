import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ishop_app/presentation/pages/shell_page.dart';


part 'routes.g.dart';

@TypedGoRoute<ShellPageRoute>(path: "/", routes: [
],)


@immutable
class ShellPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ShellPage();
  }
}
