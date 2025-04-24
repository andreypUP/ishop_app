import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/image.dart';
import 'image_model.dart';

part 'listing_model.freezed.dart';
part 'listing_model.g.dart';


@freezed
class ListingModel with _$ListingModel {
  const factory ListingModel({
    required String name,
    required String id,
    required double? price,
    required String? description,
    required DateTime? createdAt,
    required List<ImageModel>? images,
    required bool? isFavorite,
    required int? cartCount,
}) = _ListingModel;

  factory ListingModel.fromJson(Map<String, dynamic> json) =>
      _$ListingModelFromJson(json);
}


