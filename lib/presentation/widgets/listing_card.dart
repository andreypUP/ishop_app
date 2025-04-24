import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ishop_app/presentation/widgets/image_holder.dart';

import '../../domain/entities/listing.dart';

class ListingCard extends StatelessWidget {
  final Listing listing;
  final VoidCallback onTap;
  final VoidCallback onAddToCart;
  final VoidCallback onAddToFavorite;

  const ListingCard({
    super.key,
    required this.listing,
    required this.onTap,
    required this.onAddToCart,
    required this.onAddToFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: InkWell(
              onTap: onTap,
              child: ImageHolder(image: listing.images?[0]),
            ),
          ),
          const Gap(8),
          Text(
            listing.name,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Text(
            '\$${listing.price}',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: (listing.isFavorite)
                    ? const Icon(Icons.favorite, color: Colors.red)
                    : const Icon(Icons.favorite_border, size: 20),
                onPressed: onAddToFavorite,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
              const SizedBox(width: 8),
              IconButton(
                icon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.add_shopping_cart, size: 20),
                    if ((listing.cartCount ?? 0) > 0) // Show count only if cartCount > 0
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Text(
                          '+${listing.cartCount}',
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ),
                  ],
                ),
                onPressed: onAddToCart,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
