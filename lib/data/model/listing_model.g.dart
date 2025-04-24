// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListingModelImpl _$$ListingModelImplFromJson(Map<String, dynamic> json) =>
    _$ListingModelImpl(
      name: json['name'] as String,
      id: json['id'] as String,
      price: (json['price'] as num?)?.toDouble(),
      description: json['description'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFavorite: json['isFavorite'] as bool?,
      cartCount: (json['cartCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ListingModelImplToJson(_$ListingModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'price': instance.price,
      'description': instance.description,
      'createdAt': instance.createdAt?.toIso8601String(),
      'images': instance.images,
      'isFavorite': instance.isFavorite,
      'cartCount': instance.cartCount,
    };
