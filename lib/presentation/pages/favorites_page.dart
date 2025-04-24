import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/favorites_bloc.dart';
import '../bloc/listing_bloc.dart';
import '../widgets/image_holder.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<ListingBloc, ListingState>(
        builder: (context, state) {
          final favorites = state.listings?.where((listing) => listing.isFavorite).toList() ?? [];

          if (favorites!.isEmpty) {
            return const Center(child: Text('No favorites yet'));
          }

          return ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: favorites.length,
            separatorBuilder: (_, __) => const Divider(),
            itemBuilder: (context, index) {
              final listing = favorites[index];

              return ListTile(
                leading: SizedBox(
                  width: 50, // Set a fixed width
                  height: 50, // Set a fixed height
                  child: ImageHolder(image: listing.images?[0]),
                ),
                title: Text(listing.name),
                subtitle: Text('\$${listing.price?.toStringAsFixed(2)}'),
                trailing: IconButton(
                  icon: const Icon(Icons.favorite, color: Colors.red),
                  onPressed: () {
                   context.read<ListingBloc>().add(
                      ListingEvent.updateFavorite(listing.id),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}


