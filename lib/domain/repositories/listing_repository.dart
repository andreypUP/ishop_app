

import '../../core/error/failure.dart';
import '../../core/params/no_return.dart';
import '../../core/result/result.dart';
import '../entities/listing.dart';

abstract class ListingRepository{
  Future<Result<List<Listing>, Failure>> getListings();

  Future<Result<Listing, Failure>> getListing(String id);

  Future<Result<NoReturn, Failure>> deleteListing(String id);

  Future<Result<NoReturn, Failure>> updateListing(Listing listing);

  Future<Result<Listing, Failure>> addListing(Listing listing);

}