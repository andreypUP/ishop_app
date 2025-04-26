import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ishop_app/presentation/pages/listing_detail_page.dart';
import 'package:ishop_app/presentation/pages/shell_page.dart';

import 'domain/entities/listing.dart';

part 'routes.g.dart';

@TypedGoRoute<ShellPageRoute>(
  path: "/",
  routes: [
    TypedGoRoute<ListingDetailPageRoute>(
      path: 'detail_page',
      name: "detail_page",
    ),
  ],
)
@immutable
class ShellPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ShellPage();
  }
}

@immutable
class ListingDetailPageRoute extends GoRouteData {
  final String id;

  const ListingDetailPageRoute(this.id);

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ListingDetailPage(id: id);
  }
}
