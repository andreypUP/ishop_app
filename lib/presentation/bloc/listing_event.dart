part of 'listing_bloc.dart';

@freezed
class ListingEvent with _$ListingEvent {
  const factory ListingEvent.getListings() = _GetListings;
  const factory ListingEvent.getListing(String id) = _GetListing;
  const factory ListingEvent.delete(String id) = _DeleteListing;
  const factory ListingEvent.saveListing(Listing listing) = _SaveListing;
  const factory ListingEvent.updateFavorite(String id) = _UpdateFavorite;
  const factory ListingEvent.addToCart(String id) = _AddToCart;
  const factory ListingEvent.removeFromCart(String id) = _RemoveFromCart;

}
