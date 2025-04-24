

import 'package:injectable/injectable.dart';
import 'package:ishop_app/core/result/result.dart';
import 'package:ishop_app/core/usecase/usecase.dart';
import 'package:ishop_app/domain/repositories/listing_repository.dart';

import '../../core/error/failure.dart';
import '../../core/params/no_return.dart';


@injectable
class DeleteListing implements UseCase<NoReturn, String>{
  final ListingRepository repository;

  DeleteListing(this.repository);



  @override
  Future<Result<NoReturn, Failure>> call(String id) async{
  return await repository.deleteListing(id);
  }}