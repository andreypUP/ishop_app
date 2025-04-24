import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ishop_app/presentation/bloc/favorites_bloc.dart';
import 'package:ishop_app/presentation/bloc/listing_bloc.dart';
import 'package:ishop_app/routes.dart';

import 'core/di/environment.dart';
import 'core/di/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(environment: dev.name);

  runApp(const MyApp());
}

final GoRouter _router = GoRouter(routes: $appRoutes);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ListingBloc>(),
        ),
        BlocProvider(
          create: (context) => FavoritesBloc(),
        ),
      ],
      child: MaterialApp.router(
        title: 'iShop App',
        debugShowCheckedModeBanner: false,
        routerConfig: _router,
      ),
    );
  }
}