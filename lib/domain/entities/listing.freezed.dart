// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Listing {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  int get cartCount => throw _privateConstructorUsedError;
  List<Image>? get images => throw _privateConstructorUsedError;

  /// Create a copy of Listing
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListingCopyWith<Listing> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingCopyWith<$Res> {
  factory $ListingCopyWith(Listing value, $Res Function(Listing) then) =
      _$ListingCopyWithImpl<$Res, Listing>;
  @useResult
  $Res call(
      {String name,
      String id,
      double? price,
      String? description,
      DateTime? createdAt,
      bool isFavorite,
      int cartCount,
      List<Image>? images});
}

/// @nodoc
class _$ListingCopyWithImpl<$Res, $Val extends Listing>
    implements $ListingCopyWith<$Res> {
  _$ListingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Listing
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? price = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? isFavorite = null,
    Object? cartCount = null,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      cartCount: null == cartCount
          ? _value.cartCount
          : cartCount // ignore: cast_nullable_to_non_nullable
              as int,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListingImplCopyWith<$Res> implements $ListingCopyWith<$Res> {
  factory _$$ListingImplCopyWith(
          _$ListingImpl value, $Res Function(_$ListingImpl) then) =
      __$$ListingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String id,
      double? price,
      String? description,
      DateTime? createdAt,
      bool isFavorite,
      int cartCount,
      List<Image>? images});
}

/// @nodoc
class __$$ListingImplCopyWithImpl<$Res>
    extends _$ListingCopyWithImpl<$Res, _$ListingImpl>
    implements _$$ListingImplCopyWith<$Res> {
  __$$ListingImplCopyWithImpl(
      _$ListingImpl _value, $Res Function(_$ListingImpl) _then)
      : super(_value, _then);

  /// Create a copy of Listing
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? price = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? isFavorite = null,
    Object? cartCount = null,
    Object? images = freezed,
  }) {
    return _then(_$ListingImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      cartCount: null == cartCount
          ? _value.cartCount
          : cartCount // ignore: cast_nullable_to_non_nullable
              as int,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
    ));
  }
}

/// @nodoc

class _$ListingImpl implements _Listing {
  const _$ListingImpl(
      {required this.name,
      required this.id,
      required this.price,
      required this.description,
      required this.createdAt,
      required this.isFavorite,
      required this.cartCount,
      required final List<Image>? images})
      : _images = images;

  @override
  final String name;
  @override
  final String id;
  @override
  final double? price;
  @override
  final String? description;
  @override
  final DateTime? createdAt;
  @override
  final bool isFavorite;
  @override
  final int cartCount;
  final List<Image>? _images;
  @override
  List<Image>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Listing(name: $name, id: $id, price: $price, description: $description, createdAt: $createdAt, isFavorite: $isFavorite, cartCount: $cartCount, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListingImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.cartCount, cartCount) ||
                other.cartCount == cartCount) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      id,
      price,
      description,
      createdAt,
      isFavorite,
      cartCount,
      const DeepCollectionEquality().hash(_images));

  /// Create a copy of Listing
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListingImplCopyWith<_$ListingImpl> get copyWith =>
      __$$ListingImplCopyWithImpl<_$ListingImpl>(this, _$identity);
}

abstract class _Listing implements Listing {
  const factory _Listing(
      {required final String name,
      required final String id,
      required final double? price,
      required final String? description,
      required final DateTime? createdAt,
      required final bool isFavorite,
      required final int cartCount,
      required final List<Image>? images}) = _$ListingImpl;

  @override
  String get name;
  @override
  String get id;
  @override
  double? get price;
  @override
  String? get description;
  @override
  DateTime? get createdAt;
  @override
  bool get isFavorite;
  @override
  int get cartCount;
  @override
  List<Image>? get images;

  /// Create a copy of Listing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListingImplCopyWith<_$ListingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
