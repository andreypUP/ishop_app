// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) addToFavorites,
    required TResult Function(String listingId) removeFromFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Listing listing)? addToFavorites,
    TResult? Function(String listingId)? removeFromFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? addToFavorites,
    TResult Function(String listingId)? removeFromFavorites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToFavorites value) addToFavorites,
    required TResult Function(_RemoveFromFavorites value) removeFromFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToFavorites value)? addToFavorites,
    TResult? Function(_RemoveFromFavorites value)? removeFromFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToFavorites value)? addToFavorites,
    TResult Function(_RemoveFromFavorites value)? removeFromFavorites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesEventCopyWith<$Res> {
  factory $FavoritesEventCopyWith(
          FavoritesEvent value, $Res Function(FavoritesEvent) then) =
      _$FavoritesEventCopyWithImpl<$Res, FavoritesEvent>;
}

/// @nodoc
class _$FavoritesEventCopyWithImpl<$Res, $Val extends FavoritesEvent>
    implements $FavoritesEventCopyWith<$Res> {
  _$FavoritesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddToFavoritesImplCopyWith<$Res> {
  factory _$$AddToFavoritesImplCopyWith(_$AddToFavoritesImpl value,
          $Res Function(_$AddToFavoritesImpl) then) =
      __$$AddToFavoritesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Listing listing});

  $ListingCopyWith<$Res> get listing;
}

/// @nodoc
class __$$AddToFavoritesImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$AddToFavoritesImpl>
    implements _$$AddToFavoritesImplCopyWith<$Res> {
  __$$AddToFavoritesImplCopyWithImpl(
      _$AddToFavoritesImpl _value, $Res Function(_$AddToFavoritesImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listing = null,
  }) {
    return _then(_$AddToFavoritesImpl(
      null == listing
          ? _value.listing
          : listing // ignore: cast_nullable_to_non_nullable
              as Listing,
    ));
  }

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ListingCopyWith<$Res> get listing {
    return $ListingCopyWith<$Res>(_value.listing, (value) {
      return _then(_value.copyWith(listing: value));
    });
  }
}

/// @nodoc

class _$AddToFavoritesImpl implements _AddToFavorites {
  const _$AddToFavoritesImpl(this.listing);

  @override
  final Listing listing;

  @override
  String toString() {
    return 'FavoritesEvent.addToFavorites(listing: $listing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToFavoritesImpl &&
            (identical(other.listing, listing) || other.listing == listing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listing);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToFavoritesImplCopyWith<_$AddToFavoritesImpl> get copyWith =>
      __$$AddToFavoritesImplCopyWithImpl<_$AddToFavoritesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) addToFavorites,
    required TResult Function(String listingId) removeFromFavorites,
  }) {
    return addToFavorites(listing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Listing listing)? addToFavorites,
    TResult? Function(String listingId)? removeFromFavorites,
  }) {
    return addToFavorites?.call(listing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? addToFavorites,
    TResult Function(String listingId)? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (addToFavorites != null) {
      return addToFavorites(listing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToFavorites value) addToFavorites,
    required TResult Function(_RemoveFromFavorites value) removeFromFavorites,
  }) {
    return addToFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToFavorites value)? addToFavorites,
    TResult? Function(_RemoveFromFavorites value)? removeFromFavorites,
  }) {
    return addToFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToFavorites value)? addToFavorites,
    TResult Function(_RemoveFromFavorites value)? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (addToFavorites != null) {
      return addToFavorites(this);
    }
    return orElse();
  }
}

abstract class _AddToFavorites implements FavoritesEvent {
  const factory _AddToFavorites(final Listing listing) = _$AddToFavoritesImpl;

  Listing get listing;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddToFavoritesImplCopyWith<_$AddToFavoritesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFromFavoritesImplCopyWith<$Res> {
  factory _$$RemoveFromFavoritesImplCopyWith(_$RemoveFromFavoritesImpl value,
          $Res Function(_$RemoveFromFavoritesImpl) then) =
      __$$RemoveFromFavoritesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String listingId});
}

/// @nodoc
class __$$RemoveFromFavoritesImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$RemoveFromFavoritesImpl>
    implements _$$RemoveFromFavoritesImplCopyWith<$Res> {
  __$$RemoveFromFavoritesImplCopyWithImpl(_$RemoveFromFavoritesImpl _value,
      $Res Function(_$RemoveFromFavoritesImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listingId = null,
  }) {
    return _then(_$RemoveFromFavoritesImpl(
      null == listingId
          ? _value.listingId
          : listingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveFromFavoritesImpl implements _RemoveFromFavorites {
  const _$RemoveFromFavoritesImpl(this.listingId);

  @override
  final String listingId;

  @override
  String toString() {
    return 'FavoritesEvent.removeFromFavorites(listingId: $listingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFromFavoritesImpl &&
            (identical(other.listingId, listingId) ||
                other.listingId == listingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listingId);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFromFavoritesImplCopyWith<_$RemoveFromFavoritesImpl> get copyWith =>
      __$$RemoveFromFavoritesImplCopyWithImpl<_$RemoveFromFavoritesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Listing listing) addToFavorites,
    required TResult Function(String listingId) removeFromFavorites,
  }) {
    return removeFromFavorites(listingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Listing listing)? addToFavorites,
    TResult? Function(String listingId)? removeFromFavorites,
  }) {
    return removeFromFavorites?.call(listingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Listing listing)? addToFavorites,
    TResult Function(String listingId)? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (removeFromFavorites != null) {
      return removeFromFavorites(listingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToFavorites value) addToFavorites,
    required TResult Function(_RemoveFromFavorites value) removeFromFavorites,
  }) {
    return removeFromFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToFavorites value)? addToFavorites,
    TResult? Function(_RemoveFromFavorites value)? removeFromFavorites,
  }) {
    return removeFromFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToFavorites value)? addToFavorites,
    TResult Function(_RemoveFromFavorites value)? removeFromFavorites,
    required TResult orElse(),
  }) {
    if (removeFromFavorites != null) {
      return removeFromFavorites(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromFavorites implements FavoritesEvent {
  const factory _RemoveFromFavorites(final String listingId) =
      _$RemoveFromFavoritesImpl;

  String get listingId;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveFromFavoritesImplCopyWith<_$RemoveFromFavoritesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoritesState {
  List<Listing>? get favorites => throw _privateConstructorUsedError;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoritesStateCopyWith<FavoritesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res, FavoritesState>;
  @useResult
  $Res call({List<Listing>? favorites});
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res, $Val extends FavoritesState>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = freezed,
  }) {
    return _then(_value.copyWith(
      favorites: freezed == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Listing>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoritesStateImplCopyWith<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  factory _$$FavoritesStateImplCopyWith(_$FavoritesStateImpl value,
          $Res Function(_$FavoritesStateImpl) then) =
      __$$FavoritesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Listing>? favorites});
}

/// @nodoc
class __$$FavoritesStateImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesStateImpl>
    implements _$$FavoritesStateImplCopyWith<$Res> {
  __$$FavoritesStateImplCopyWithImpl(
      _$FavoritesStateImpl _value, $Res Function(_$FavoritesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = freezed,
  }) {
    return _then(_$FavoritesStateImpl(
      favorites: freezed == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Listing>?,
    ));
  }
}

/// @nodoc

class _$FavoritesStateImpl implements _FavoritesState {
  const _$FavoritesStateImpl({final List<Listing>? favorites = const []})
      : _favorites = favorites;

  final List<Listing>? _favorites;
  @override
  @JsonKey()
  List<Listing>? get favorites {
    final value = _favorites;
    if (value == null) return null;
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FavoritesState(favorites: $favorites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_favorites));

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesStateImplCopyWith<_$FavoritesStateImpl> get copyWith =>
      __$$FavoritesStateImplCopyWithImpl<_$FavoritesStateImpl>(
          this, _$identity);
}

abstract class _FavoritesState implements FavoritesState {
  const factory _FavoritesState({final List<Listing>? favorites}) =
      _$FavoritesStateImpl;

  @override
  List<Listing>? get favorites;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoritesStateImplCopyWith<_$FavoritesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
