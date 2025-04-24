

import '../error/failure.dart';
import '../result/result.dart';

abstract class UseCase<Type, Params> {
  Future<Result<Type, Failure>> call(Params params);
}

