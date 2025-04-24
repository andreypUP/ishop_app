import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ishop_app/presentation/bloc/listing_bloc.dart';

import '../widgets/image_holder.dart' show ImageHolder;

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ListingBloc, ListingState>(
        builder: (context, state) {
          if (state.status == ListingStatus.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.status == ListingStatus.error) {
            return Center(
                child: Text(state.errorMessage ?? 'Error loading cart items'));
          }

          final cartItems =
              state.listings?.where((item) => item.cartCount > 0).toList();

          if (cartItems == null || cartItems.isEmpty) {
            return const Center(child: Text('No items in the cart'));
          }

          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: cartItems.length,
            itemBuilder: (context, index) {
              final cartItem = cartItems[index];
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  leading: SizedBox(
                    width: 60,
                    height: 60,
                    child: ImageHolder(image: cartItem.images?[0]),
                  ),
                  title: Text(cartItem.name),
                  subtitle: Text(
                    'Quantity: ${cartItem.cartCount}\nPrice: \$${(cartItem.price ?? 0).toStringAsFixed(2)}',
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove_circle_outline),
                        onPressed: () {
                          context.read<ListingBloc>().add(
                                ListingEvent.removeFromCart(
                                  cartItem.id,
                                ),
                              );
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.add_circle_outline),
                        onPressed: () {
                          context.read<ListingBloc>().add(
                                ListingEvent.addToCart(
                                  cartItem.id,
                                ),
                              );
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
