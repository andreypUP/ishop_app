

import 'package:injectable/injectable.dart';


import '../../core/error/failure.dart';
import '../../core/result/result.dart';
import '../../core/usecase/usecase.dart';
import '../entities/listing.dart';
import '../repositories/listing_repository.dart';

@injectable
class GetListing implements UseCase<Listing, String>{

  final ListingRepository repository;

  GetListing(this.repository);

  @override
  Future<Result<Listing, Failure>> call(String id) async{
    return await repository.getListing(id);
  }

}
