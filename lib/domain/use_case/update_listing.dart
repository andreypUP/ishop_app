

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/failure.dart';
import '../../core/params/no_return.dart';
import '../../core/result/result.dart';
import '../../core/usecase/usecase.dart';
import '../entities/listing.dart';
import '../repositories/listing_repository.dart';

part 'update_listing.freezed.dart';
@injectable
class UpdateListing implements UseCase<NoReturn, UpdateListingParams>{
  final ListingRepository repository;

  UpdateListing(this.repository);

  @override
  Future<Result<NoReturn, Failure>> call(UpdateListingParams params)async {
 return await repository.updateListing(params.listing);
  }
}

@freezed
class UpdateListingParams with _$UpdateListingParams {
  const factory UpdateListingParams({required Listing listing}) = _UpdateListingParams;

}