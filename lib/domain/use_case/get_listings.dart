import 'package:injectable/injectable.dart';

import '../../core/error/failure.dart';
import '../../core/params/no_params.dart';
import '../../core/result/result.dart';
import '../../core/usecase/usecase.dart';
import '../entities/listing.dart';
import '../repositories/listing_repository.dart';


@injectable
class GetListings implements UseCase<List<Listing>, NoParams>{
  final ListingRepository repository;

  GetListings(this.repository);

  @override
  Future<Result<List<Listing>, Failure>> call(NoParams params) async {
 return await repository.getListings();
  }

}