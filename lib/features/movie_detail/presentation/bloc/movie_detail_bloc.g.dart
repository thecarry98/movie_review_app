// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MovieDetailStateCWProxy {
  MovieDetailState message(String? message);

  MovieDetailState movieEntity(MovieDetailEntity? movieEntity);

  MovieDetailState status(BaseStateStatus status);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MovieDetailState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MovieDetailState(...).copyWith(id: 12, name: "My name")
  /// ````
  MovieDetailState call({
    String? message,
    MovieDetailEntity? movieEntity,
    BaseStateStatus? status,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMovieDetailState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMovieDetailState.copyWith.fieldName(...)`
class _$MovieDetailStateCWProxyImpl implements _$MovieDetailStateCWProxy {
  final MovieDetailState _value;

  const _$MovieDetailStateCWProxyImpl(this._value);

  @override
  MovieDetailState message(String? message) => this(message: message);

  @override
  MovieDetailState movieEntity(MovieDetailEntity? movieEntity) =>
      this(movieEntity: movieEntity);

  @override
  MovieDetailState status(BaseStateStatus status) => this(status: status);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MovieDetailState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MovieDetailState(...).copyWith(id: 12, name: "My name")
  /// ````
  MovieDetailState call({
    Object? message = const $CopyWithPlaceholder(),
    Object? movieEntity = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
  }) {
    return MovieDetailState(
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      movieEntity: movieEntity == const $CopyWithPlaceholder()
          ? _value.movieEntity
          // ignore: cast_nullable_to_non_nullable
          : movieEntity as MovieDetailEntity?,
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as BaseStateStatus,
    );
  }
}

extension $MovieDetailStateCopyWith on MovieDetailState {
  /// Returns a callable class that can be used as follows: `instanceOfMovieDetailState.copyWith(...)` or like so:`instanceOfMovieDetailState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MovieDetailStateCWProxy get copyWith => _$MovieDetailStateCWProxyImpl(this);
}
