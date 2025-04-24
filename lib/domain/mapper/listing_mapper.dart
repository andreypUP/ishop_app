import 'package:ishop_app/domain/mapper/image_mapper.dart';

import '../../data/model/listing_model.dart';
import '../entities/listing.dart';

extension ListingMapper on ListingModel {
  Listing toDomain() {
    return Listing(
      name: name,
      id: id,
      price: price,
      description: description,
      createdAt: createdAt,
      images: images?.map((image) => image.toDomain()).toList(),
      isFavorite: isFavorite ?? false,
      cartCount: cartCount?? 0,
    );
  }
}

extension ListingModelMapper on Listing {
  ListingModel toData() {
    return ListingModel(
      name: name,
      id: id,
      price: price,
      description: description,
      createdAt: createdAt,
      images: images?.map((image) => image.toData()).toList(),
      isFavorite: isFavorite,
      cartCount: cartCount,
    );
  }
}
