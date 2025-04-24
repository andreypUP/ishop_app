// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_listing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddListingParams {
  Listing get listing => throw _privateConstructorUsedError;

  /// Create a copy of AddListingParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddListingParamsCopyWith<AddListingParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddListingParamsCopyWith<$Res> {
  factory $AddListingParamsCopyWith(
          AddListingParams value, $Res Function(AddListingParams) then) =
      _$AddListingParamsCopyWithImpl<$Res, AddListingParams>;
  @useResult
  $Res call({Listing listing});

  $ListingCopyWith<$Res> get listing;
}

/// @nodoc
class _$AddListingParamsCopyWithImpl<$Res, $Val extends AddListingParams>
    implements $AddListingParamsCopyWith<$Res> {
  _$AddListingParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddListingParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listing = null,
  }) {
    return _then(_value.copyWith(
      listing: null == listing
          ? _value.listing
          : listing // ignore: cast_nullable_to_non_nullable
              as Listing,
    ) as $Val);
  }

  /// Create a copy of AddListingParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ListingCopyWith<$Res> get listing {
    return $ListingCopyWith<$Res>(_value.listing, (value) {
      return _then(_value.copyWith(listing: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddListingParamsImplCopyWith<$Res>
    implements $AddListingParamsCopyWith<$Res> {
  factory _$$AddListingParamsImplCopyWith(_$AddListingParamsImpl value,
          $Res Function(_$AddListingParamsImpl) then) =
      __$$AddListingParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Listing listing});

  @override
  $ListingCopyWith<$Res> get listing;
}

/// @nodoc
class __$$AddListingParamsImplCopyWithImpl<$Res>
    extends _$AddListingParamsCopyWithImpl<$Res, _$AddListingParamsImpl>
    implements _$$AddListingParamsImplCopyWith<$Res> {
  __$$AddListingParamsImplCopyWithImpl(_$AddListingParamsImpl _value,
      $Res Function(_$AddListingParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddListingParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listing = null,
  }) {
    return _then(_$AddListingParamsImpl(
      listing: null == listing
          ? _value.listing
          : listing // ignore: cast_nullable_to_non_nullable
              as Listing,
    ));
  }
}

/// @nodoc

class _$AddListingParamsImpl implements _AddListingParams {
  const _$AddListingParamsImpl({required this.listing});

  @override
  final Listing listing;

  @override
  String toString() {
    return 'AddListingParams(listing: $listing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddListingParamsImpl &&
            (identical(other.listing, listing) || other.listing == listing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listing);

  /// Create a copy of AddListingParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddListingParamsImplCopyWith<_$AddListingParamsImpl> get copyWith =>
      __$$AddListingParamsImplCopyWithImpl<_$AddListingParamsImpl>(
          this, _$identity);
}

abstract class _AddListingParams implements AddListingParams {
  const factory _AddListingParams({required final Listing listing}) =
      _$AddListingParamsImpl;

  @override
  Listing get listing;

  /// Create a copy of AddListingParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddListingParamsImplCopyWith<_$AddListingParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
