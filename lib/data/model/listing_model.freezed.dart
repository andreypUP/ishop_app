// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListingModel _$ListingModelFromJson(Map<String, dynamic> json) {
  return _ListingModel.fromJson(json);
}

/// @nodoc
mixin _$ListingModel {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  List<ImageModel>? get images => throw _privateConstructorUsedError;
  bool? get isFavorite => throw _privateConstructorUsedError;
  int? get cartCount => throw _privateConstructorUsedError;

  /// Serializes this ListingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListingModelCopyWith<ListingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingModelCopyWith<$Res> {
  factory $ListingModelCopyWith(
          ListingModel value, $Res Function(ListingModel) then) =
      _$ListingModelCopyWithImpl<$Res, ListingModel>;
  @useResult
  $Res call(
      {String name,
      String id,
      double? price,
      String? description,
      DateTime? createdAt,
      List<ImageModel>? images,
      bool? isFavorite,
      int? cartCount});
}

/// @nodoc
class _$ListingModelCopyWithImpl<$Res, $Val extends ListingModel>
    implements $ListingModelCopyWith<$Res> {
  _$ListingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? price = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? images = freezed,
    Object? isFavorite = freezed,
    Object? cartCount = freezed,
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
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      cartCount: freezed == cartCount
          ? _value.cartCount
          : cartCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListingModelImplCopyWith<$Res>
    implements $ListingModelCopyWith<$Res> {
  factory _$$ListingModelImplCopyWith(
          _$ListingModelImpl value, $Res Function(_$ListingModelImpl) then) =
      __$$ListingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String id,
      double? price,
      String? description,
      DateTime? createdAt,
      List<ImageModel>? images,
      bool? isFavorite,
      int? cartCount});
}

/// @nodoc
class __$$ListingModelImplCopyWithImpl<$Res>
    extends _$ListingModelCopyWithImpl<$Res, _$ListingModelImpl>
    implements _$$ListingModelImplCopyWith<$Res> {
  __$$ListingModelImplCopyWithImpl(
      _$ListingModelImpl _value, $Res Function(_$ListingModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? price = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? images = freezed,
    Object? isFavorite = freezed,
    Object? cartCount = freezed,
  }) {
    return _then(_$ListingModelImpl(
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
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      cartCount: freezed == cartCount
          ? _value.cartCount
          : cartCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListingModelImpl implements _ListingModel {
  const _$ListingModelImpl(
      {required this.name,
      required this.id,
      required this.price,
      required this.description,
      required this.createdAt,
      required final List<ImageModel>? images,
      required this.isFavorite,
      required this.cartCount})
      : _images = images;

  factory _$ListingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListingModelImplFromJson(json);

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
  final List<ImageModel>? _images;
  @override
  List<ImageModel>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isFavorite;
  @override
  final int? cartCount;

  @override
  String toString() {
    return 'ListingModel(name: $name, id: $id, price: $price, description: $description, createdAt: $createdAt, images: $images, isFavorite: $isFavorite, cartCount: $cartCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListingModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.cartCount, cartCount) ||
                other.cartCount == cartCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      id,
      price,
      description,
      createdAt,
      const DeepCollectionEquality().hash(_images),
      isFavorite,
      cartCount);

  /// Create a copy of ListingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListingModelImplCopyWith<_$ListingModelImpl> get copyWith =>
      __$$ListingModelImplCopyWithImpl<_$ListingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListingModelImplToJson(
      this,
    );
  }
}

abstract class _ListingModel implements ListingModel {
  const factory _ListingModel(
      {required final String name,
      required final String id,
      required final double? price,
      required final String? description,
      required final DateTime? createdAt,
      required final List<ImageModel>? images,
      required final bool? isFavorite,
      required final int? cartCount}) = _$ListingModelImpl;

  factory _ListingModel.fromJson(Map<String, dynamic> json) =
      _$ListingModelImpl.fromJson;

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
  List<ImageModel>? get images;
  @override
  bool? get isFavorite;
  @override
  int? get cartCount;

  /// Create a copy of ListingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListingModelImplCopyWith<_$ListingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
