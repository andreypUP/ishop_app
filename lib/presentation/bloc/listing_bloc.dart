import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/failure.dart';
import '../../core/params/no_params.dart';
import '../../core/params/no_return.dart';
import '../../core/result/result.dart';
import '../../domain/entities/listing.dart';
import '../../domain/use_case/add_listing.dart';
import '../../domain/use_case/delete_listing.dart';
import '../../domain/use_case/get_listings.dart';
import '../../domain/use_case/update_listing.dart';

part 'listing_event.dart';

part 'listing_state.dart';

part 'listing_bloc.freezed.dart';

@injectable
class ListingBloc extends Bloc<ListingEvent, ListingState> {
  final GetListings _getListingsUseCase;
  final DeleteListing _deleteListingUseCase;
  final UpdateListing _updateListingUseCase;
  final AddListing _addListingUseCase;

  ListingBloc({
    required GetListings get,
    required DeleteListing delete,
    required UpdateListing update,
    required AddListing add,
  })  : _getListingsUseCase = get,
        _deleteListingUseCase = delete,
        _updateListingUseCase = update,
        _addListingUseCase = add,
        super(const ListingState()) {
    on<ListingEvent>((event, emit) async {
      switch (event) {
        case _GetListings():
          await _getListings(event, emit);
          break;
        case _DeleteListing():
          await _deleteListing(event, emit);
          break;
        case _SaveListing():
          await _saveListing(event, emit);
          break;
        case _UpdateFavorite():
          await _updateFavorite(event.id, emit);
          break;
        case _AddToCart():
          _addToCart(event.id, emit);
          break;
        case _RemoveFromCart():
          _removeFromCart(event.id, emit);
          break;
      }
    });
    print("GetListing EVENT is called");
    this.add(const ListingEvent.getListings());
  }

  Future<void> _removeFromCart(
      String listingId, Emitter<ListingState> emit) async {
    final updatedListings = state.listings?.map((listing) {
      if (listing.id == listingId) {
        return listing.copyWith(cartCount: listing.cartCount - 1);
      }
      return listing;
    }).toList();
    emit(state.copyWith(listings: updatedListings));
  }

  Future<void> _addToCart(String listingId, Emitter<ListingState> emit) async {
    print("Add to Cart");
    final updatedListings = state.listings?.map((listing) {
      if (listing.id == listingId) {
        return listing.copyWith(cartCount: listing.cartCount + 1);
      }
      return listing;
    }).toList();

    emit(state.copyWith(listings: updatedListings));

  }

  Future<void> _updateFavorite(
      String listingId, Emitter<ListingState> emit) async {
    final updatedListings = state.listings?.map((listing) {
      if (listing.id == listingId) {
        return listing.copyWith(isFavorite: !(listing.isFavorite));
      }
      return listing;
    }).toList();

    emit(state.copyWith(listings: updatedListings));

    print("Update Favorite");
  }

  Future<void> _getListings(
      _GetListings event, Emitter<ListingState> emit) async {
    try {
      emit(state.copyWith(status: ListingStatus.loading));

      final result = await _getListingsUseCase.call(const NoParams());

      switch (result) {
        case ResultSuccess<List<Listing>, Failure>():
          final updatedResult = result.value.map((listing) {
            final updatedImages = listing.images?.map((image) {
              return image.copyWith(blurHash: "L5H2EC=PM+yV0g-mq.wG9c010J}I");
            }).toList();
            return listing.copyWith(
              images: updatedImages,
            );
          }).toList();

          emit(state.copyWith(
            listings: updatedResult,
            status: ListingStatus.loaded,
          ));

        case ResultError<List<Listing>, Failure>(:final failure):
          emit(state.copyWith(
            errorMessage: 'Failed to get listings: {$failure}',
          ));
      }
    } catch (error) {
      emit(state.copyWith(
        status: ListingStatus.error,
        errorMessage: 'Failed to load listings: $error',
      ));
    }
  }

  Future<void> _deleteListing(
      _DeleteListing event, Emitter<ListingState> emit) async {
    try {
      emit(state.copyWith(status: ListingStatus.loading));

      final result = await _deleteListingUseCase.call(event.id);

      switch (result) {
        case ResultSuccess<NoReturn, Failure>():
          final currentList = state.listings?.toList();
          currentList?.removeWhere((element) => element.id == event.id);

          emit(
            state.copyWith(
              status: ListingStatus.loaded,
              listings: currentList,
            ),
          );
        case ResultError<NoReturn, Failure>(:final failure):
          emit(state.copyWith(
            status: ListingStatus.error,
            errorMessage: 'Failed to delete listing: {$failure}',
          ));
      }
    } catch (error) {
      emit(state.copyWith(
        status: ListingStatus.error,
        errorMessage: 'Failed to delete listing: $error',
      ));
    }
  }

  Future<void> _saveListing(
      _SaveListing event, Emitter<ListingState> emit) async {
    try {
      emit(state.copyWith(status: ListingStatus.loading));

      final Result<Listing, Failure> result;
      if (event.listing.id.isEmpty) {
        result = await _addListingUseCase
            .call(AddListingParams(listing: event.listing));
      } else {
        result = await _updateListingUseCase
            .call(UpdateListingParams(listing: event.listing))
            .then((value) => Result(event.listing));
      }

      switch (result) {
        case ResultSuccess<Listing, Failure>():
          final currentList = state.listings?.toList();
          if (event.listing.id.isEmpty) {
            currentList?.add(result.value);
          } else {
            final index =
                currentList?.indexWhere((l) => l.id == event.listing.id);
            if (index! >= 0) {
              currentList?[index] = event.listing;
            }
          }
          emit(state.copyWith(
            status: ListingStatus.loaded,
            listings: currentList,
          ));
        case ResultError<Listing, Failure>(:final failure):
          emit(state.copyWith(
            status: ListingStatus.error,
            errorMessage: 'Failed to save listing: {$failure}',
          ));
      }
    } catch (error) {
      emit(state.copyWith(
        status: ListingStatus.error,
        errorMessage: 'Failed to save listing: $error',
      ));
    }
  }
}
