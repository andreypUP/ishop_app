import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ishop_app/routes.dart';

import '../bloc/favorites_bloc.dart';
import '../bloc/listing_bloc.dart';
import '../widgets/listing_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<ListingBloc, ListingState>(
        builder: (context, state) {
          if (state.status == ListingStatus.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.status == ListingStatus.error) {
            return Center(
                child: Text(state.errorMessage ?? 'Error loading listings'));
          }

          final listings = state.listings ?? [];
          print('Listings: $listings');

          if (listings.isEmpty) {
            return const Center(child: Text('No listings available'));
          }

          return GridView.builder(
            padding: const EdgeInsets.all(16),
            physics: const AlwaysScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 0.7,
            ),
            itemCount: listings.length,
            itemBuilder: (context, index) {
              final listing = listings[index];
              return ListingCard(
                listing: listing,
                onTap: () {
                  ListingDetailPageRoute(listing.id).go(context);
                },
                onAddToCart: () {
                  context
                      .read<ListingBloc>()
                      .add(ListingEvent.addToCart(listing.id));
                },
                onAddToFavorite: () {
                  context.read<ListingBloc>().add(
                        ListingEvent.updateFavorite(listing.id),
                      );
                },
              );
            },
          );
        },
      ),
    );
  }
}
