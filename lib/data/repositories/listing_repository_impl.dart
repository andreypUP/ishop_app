import 'package:injectable/injectable.dart';
import 'package:ishop_app/domain/mapper/listing_mapper.dart';


import '../../core/error/failure.dart';
import '../../core/network/network_info.dart';
import '../../core/params/no_return.dart';
import '../../core/result/result.dart';
import '../../domain/entities/listing.dart';
import '../../domain/repositories/listing_repository.dart';
import '../datasources/listing_remote_data_source.dart';

@Singleton(as: ListingRepository)
class ListingRepositoryImpl implements ListingRepository{
  final NetworkInfo networkInfo;
  final ListingRemoteDataSource remoteDataSource;

  ListingRepositoryImpl(this.networkInfo, this.remoteDataSource);

  @override
  Future<Result<Listing, Failure>> addListing(Listing listing) async {
   if (await networkInfo.isConnected == false){
    return Result.error(NotConnectedToInternetError("No internet connection"));
   }
   try{
     final result = await remoteDataSource.addListing(listing.toData());
     return Result(result.toDomain());
   }
   catch(error){
    return Result.error(ServerFailure("Server failure: $error"));
   }
  }

  @override
  Future<Result<NoReturn, Failure>> deleteListing(String id) async{
    if (await networkInfo.isConnected == false){
      return Result.error(NotConnectedToInternetError("No internet connection"));
    }
    try{
      await remoteDataSource.deleteListing(id);
      return Result(NoReturn());
    }
    catch(error){
      return Result.error(ServerFailure("Server failure: $error"));
    }
  }

  @override
  Future<Result<Listing, Failure>> getListing(String id) async {
    if (await networkInfo.isConnected == false){
      return Result.error(NotConnectedToInternetError("No internet connection"));
    }
    try{
      final result = await remoteDataSource.getListing(id);
      return Result(result.toDomain());
    }
    catch(error){
      return Result.error(ServerFailure("Server failure: $error"));
    }
  }

  @override
  Future<Result<List<Listing>, Failure>> getListings() async {
    if (await networkInfo.isConnected == false){
      return Result.error(NotConnectedToInternetError("No internet connection"));
    }
   try{
     final result = await remoteDataSource.getListings();
     final castedResult = result.map((e) => e.toDomain()).toList();
     return Result(castedResult);
   }catch(error){
     return Result.error(ServerFailure("Server failure: $error"));
   }
  }

  @override
  Future<Result<NoReturn, Failure>> updateListing(Listing listing) async{
    if (await networkInfo.isConnected == false){
      return Result.error(NotConnectedToInternetError("No internet connection"));
    } 
    try{
      await remoteDataSource.updateListing(listing.toData());
      return Result(NoReturn());
    }
    catch(error){
      return Result.error(ServerFailure("Server failure: $error"));
    }
  }

}