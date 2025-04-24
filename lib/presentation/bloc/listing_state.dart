part of 'listing_bloc.dart';
enum ListingStatus{
  loaded,
  loading,
  error,
}
@freezed
class ListingState with _$ListingState {
  const factory ListingState({
    List<Listing>? listings,
    ListingStatus? status,
    String? errorMessage,
  }) = _ListingState;
}
