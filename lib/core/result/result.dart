import '../error/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
 sealed class Result<T, F extends Failure> with _$Result<T, F> {
   const factory Result(T value) = ResultSuccess<T,F>;

   const factory Result.error(F failure) = ResultError<T,F>;

}
