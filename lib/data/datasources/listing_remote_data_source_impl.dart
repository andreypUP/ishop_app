import 'package:injectable/injectable.dart';

import '../model/listing_model.dart';
import '../services/listing_api_service.dart';
import 'listing_remote_data_source.dart';


@Singleton(as: ListingRemoteDataSource)
class ListingRemoteDataSourceImpl implements ListingRemoteDataSource{
  final ListingApiService apiService;

  ListingRemoteDataSourceImpl(this.apiService);

  @override
  Future<void> deleteListing(String id) async {
    return await apiService.deleteListing(id);
    }

  @override
  Future<ListingModel> getListing(String id) async {
  return await apiService.getListing(id);
  }

  @override
  Future<List<ListingModel>> getListings() async {
    return await apiService.getListings();
  }

  @override
  Future<void> updateListing(ListingModel listing) async {
    return await apiService.updateListing(listing);
  }

  @override
  Future<ListingModel> addListing(ListingModel listing) async {
    return await apiService.addListing(listing);
  }

}