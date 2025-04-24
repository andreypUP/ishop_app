import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ishop_app/domain/entities/image.dart';

part 'listing.freezed.dart';

@freezed
class Listing with _$Listing {
  const factory Listing({
    required String name,
    required String id,
    required double? price,
    required String? description,
    required DateTime? createdAt,
    required bool isFavorite,
    required int cartCount,
    required List<Image>? images,
}) = _Listing;

}
