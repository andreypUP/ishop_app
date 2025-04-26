import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gap/gap.dart';
import 'package:ishop_app/presentation/bloc/listing_bloc.dart';
import 'package:ishop_app/presentation/widgets/image_holder.dart';
import 'package:ishop_app/domain/entities/image.dart' as image_entity;

class ListingDetailPage extends StatelessWidget {
  final String id;

  const ListingDetailPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listing Details'),
      ),
      body: BlocBuilder<ListingBloc, ListingState>(
        builder: (context, state) {
          final listing = state.listings?.firstWhere(
            (listing) => listing.id == id,
          );

          if (state.status == ListingStatus.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (listing == null) {
            return const Center(child: Text('Listing not found.'));
          }

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (listing.images != null && listing.images!.isNotEmpty)
                    _ListingImageCarousel(images: listing.images!),
                  const Gap(12),
                  Text(
                    listing.name,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const Gap(8),
                  Text(
                    '\$${listing.price?.toStringAsFixed(2) ?? 'N/A'}',
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const Gap(16),
                  Text(
                    listing.description ?? 'No description available.',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: () {
                // Navigate to shop page
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                textStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              child: const Text('Shop'),
            ),
            TextButton(
              onPressed: () {
                // Navigate to chat page
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                textStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              child: const Text('Chat'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle buy now logic
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                textStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
              child: const Text('Buy Now'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<ListingBloc>().add(
                      ListingEvent.addToCart(id),
                    );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                textStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
              child: const Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}

class _ListingImageCarousel extends StatelessWidget {
  final List<image_entity.Image> images;

  const _ListingImageCarousel({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200,
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
      ),
      items: images.map((image) {
        return Builder(
          builder: (BuildContext context) {
            return ImageHolder(
              image: image,
              fit: BoxFit.cover,
            );
          },
        );
      }).toList(),
    );
  }
}
