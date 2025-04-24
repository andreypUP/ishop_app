// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Result<T, F extends Failure> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function(F failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(T value)? $default, {
    TResult? Function(F failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function(F failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ResultSuccess<T, F> value) $default, {
    required TResult Function(ResultError<T, F> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ResultSuccess<T, F> value)? $default, {
    TResult? Function(ResultError<T, F> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ResultSuccess<T, F> value)? $default, {
    TResult Function(ResultError<T, F> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, F extends Failure, $Res> {
  factory $ResultCopyWith(
          Result<T, F> value, $Res Function(Result<T, F>) then) =
      _$ResultCopyWithImpl<T, F, $Res, Result<T, F>>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, F extends Failure, $Res,
    $Val extends Result<T, F>> implements $ResultCopyWith<T, F, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ResultSuccessImplCopyWith<T, F extends Failure, $Res> {
  factory _$$ResultSuccessImplCopyWith(_$ResultSuccessImpl<T, F> value,
          $Res Function(_$ResultSuccessImpl<T, F>) then) =
      __$$ResultSuccessImplCopyWithImpl<T, F, $Res>;
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$$ResultSuccessImplCopyWithImpl<T, F extends Failure, $Res>
    extends _$ResultCopyWithImpl<T, F, $Res, _$ResultSuccessImpl<T, F>>
    implements _$$ResultSuccessImplCopyWith<T, F, $Res> {
  __$$ResultSuccessImplCopyWithImpl(_$ResultSuccessImpl<T, F> _value,
      $Res Function(_$ResultSuccessImpl<T, F>) _then)
      : super(_value, _then);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$ResultSuccessImpl<T, F>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ResultSuccessImpl<T, F extends Failure> implements ResultSuccess<T, F> {
  const _$ResultSuccessImpl(this.value);

  @override
  final T value;

  @override
  String toString() {
    return 'Result<$T, $F>(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultSuccessImpl<T, F> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultSuccessImplCopyWith<T, F, _$ResultSuccessImpl<T, F>> get copyWith =>
      __$$ResultSuccessImplCopyWithImpl<T, F, _$ResultSuccessImpl<T, F>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function(F failure) error,
  }) {
    return $default(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(T value)? $default, {
    TResult? Function(F failure)? error,
  }) {
    return $default?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function(F failure)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ResultSuccess<T, F> value) $default, {
    required TResult Function(ResultError<T, F> value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ResultSuccess<T, F> value)? $default, {
    TResult? Function(ResultError<T, F> value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ResultSuccess<T, F> value)? $default, {
    TResult Function(ResultError<T, F> value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ResultSuccess<T, F extends Failure> implements Result<T, F> {
  const factory ResultSuccess(final T value) = _$ResultSuccessImpl<T, F>;

  T get value;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultSuccessImplCopyWith<T, F, _$ResultSuccessImpl<T, F>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResultErrorImplCopyWith<T, F extends Failure, $Res> {
  factory _$$ResultErrorImplCopyWith(_$ResultErrorImpl<T, F> value,
          $Res Function(_$ResultErrorImpl<T, F>) then) =
      __$$ResultErrorImplCopyWithImpl<T, F, $Res>;
  @useResult
  $Res call({F failure});
}

/// @nodoc
class __$$ResultErrorImplCopyWithImpl<T, F extends Failure, $Res>
    extends _$ResultCopyWithImpl<T, F, $Res, _$ResultErrorImpl<T, F>>
    implements _$$ResultErrorImplCopyWith<T, F, $Res> {
  __$$ResultErrorImplCopyWithImpl(_$ResultErrorImpl<T, F> _value,
      $Res Function(_$ResultErrorImpl<T, F>) _then)
      : super(_value, _then);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ResultErrorImpl<T, F>(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as F,
    ));
  }
}

/// @nodoc

class _$ResultErrorImpl<T, F extends Failure> implements ResultError<T, F> {
  const _$ResultErrorImpl(this.failure);

  @override
  final F failure;

  @override
  String toString() {
    return 'Result<$T, $F>.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultErrorImpl<T, F> &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultErrorImplCopyWith<T, F, _$ResultErrorImpl<T, F>> get copyWith =>
      __$$ResultErrorImplCopyWithImpl<T, F, _$ResultErrorImpl<T, F>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function(F failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(T value)? $default, {
    TResult? Function(F failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function(F failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ResultSuccess<T, F> value) $default, {
    required TResult Function(ResultError<T, F> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ResultSuccess<T, F> value)? $default, {
    TResult? Function(ResultError<T, F> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ResultSuccess<T, F> value)? $default, {
    TResult Function(ResultError<T, F> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ResultError<T, F extends Failure> implements Result<T, F> {
  const factory ResultError(final F failure) = _$ResultErrorImpl<T, F>;

  F get failure;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultErrorImplCopyWith<T, F, _$ResultErrorImpl<T, F>> get copyWith =>
      throw _privateConstructorUsedError;
}
