
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ishop_app/core/error/failure.dart';
import 'package:ishop_app/core/result/result.dart';
import 'package:ishop_app/core/usecase/usecase.dart';
import 'package:ishop_app/domain/repositories/listing_repository.dart';

import '../entities/listing.dart';

part 'add_listing.freezed.dart';

@injectable
class AddListing implements UseCase<Listing, AddListingParams>{
  final ListingRepository repository;

  AddListing(this.repository);

  @override
  Future<Result<Listing, Failure>> call(AddListingParams params)async {
    return await repository.addListing(params.listing);
  }

}

@freezed
class AddListingParams with _$AddListingParams {
  const factory AddListingParams(
      {required Listing listing}) = _AddListingParams;

}
