


import '../model/listing_model.dart';

abstract class ListingRemoteDataSource{


  Future <List<ListingModel>> getListings();

  Future<ListingModel> getListing(String id);

  Future<void> updateListing(ListingModel listing);

  Future<void> deleteListing(String id);

  Future<ListingModel> addListing(ListingModel listing);
}