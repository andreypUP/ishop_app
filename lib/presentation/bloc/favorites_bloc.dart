import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/listing.dart';

part 'favorites_event.dart';
part 'favorites_state.dart';
part 'favorites_bloc.freezed.dart';

@injectable
class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc() : super(const FavoritesState()) {
    on<FavoritesEvent>((event, emit)async {
switch(event){
  case _AddToFavorites():
    await _addToFavorites(event, emit);
    break;
  case _RemoveFromFavorites():
    await _removeFromFavorites(event, emit);
    break;
}
    });
  }

  Future<void> _addToFavorites(
      _AddToFavorites event, Emitter<FavoritesState> emit) async {
    final updatedFavorites = List<Listing>.from(state.favorites ?? [])
      ..add(event.listing);
    emit(state.copyWith(favorites: updatedFavorites));
  }

  Future<void> _removeFromFavorites(
      _RemoveFromFavorites event, Emitter<FavoritesState> emit) async {
    final updatedFavorites = state.favorites
        ?.where((listing) => listing.id != event.listingId)
        .toList();
    emit(state.copyWith(favorites: updatedFavorites));
  }
}


