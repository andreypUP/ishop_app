part of 'favorites_bloc.dart';

@freezed
class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.addToFavorites(Listing listing) = _AddToFavorites;
  const factory FavoritesEvent.removeFromFavorites(String listingId) = _RemoveFromFavorites;
}
