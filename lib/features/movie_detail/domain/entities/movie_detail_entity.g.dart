// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MovieDetailEntityCWProxy {
  MovieDetailEntity id(String? id);

  MovieDetailEntity movieAuth(MovieAuthModel? movieAuth);

  MovieDetailEntity movieDetail(MovieDetailModel? movieDetail);

  MovieDetailEntity movieReview(List<MovieReviewModel>? movieReview);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MovieDetailEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MovieDetailEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  MovieDetailEntity call({
    String? id,
    MovieAuthModel? movieAuth,
    MovieDetailModel? movieDetail,
    List<MovieReviewModel>? movieReview,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMovieDetailEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMovieDetailEntity.copyWith.fieldName(...)`
class _$MovieDetailEntityCWProxyImpl implements _$MovieDetailEntityCWProxy {
  final MovieDetailEntity _value;

  const _$MovieDetailEntityCWProxyImpl(this._value);

  @override
  MovieDetailEntity id(String? id) => this(id: id);

  @override
  MovieDetailEntity movieAuth(MovieAuthModel? movieAuth) =>
      this(movieAuth: movieAuth);

  @override
  MovieDetailEntity movieDetail(MovieDetailModel? movieDetail) =>
      this(movieDetail: movieDetail);

  @override
  MovieDetailEntity movieReview(List<MovieReviewModel>? movieReview) =>
      this(movieReview: movieReview);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MovieDetailEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MovieDetailEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  MovieDetailEntity call({
    Object? id = const $CopyWithPlaceholder(),
    Object? movieAuth = const $CopyWithPlaceholder(),
    Object? movieDetail = const $CopyWithPlaceholder(),
    Object? movieReview = const $CopyWithPlaceholder(),
  }) {
    return MovieDetailEntity(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      movieAuth: movieAuth == const $CopyWithPlaceholder()
          ? _value.movieAuth
          // ignore: cast_nullable_to_non_nullable
          : movieAuth as MovieAuthModel?,
      movieDetail: movieDetail == const $CopyWithPlaceholder()
          ? _value.movieDetail
          // ignore: cast_nullable_to_non_nullable
          : movieDetail as MovieDetailModel?,
      movieReview: movieReview == const $CopyWithPlaceholder()
          ? _value.movieReview
          // ignore: cast_nullable_to_non_nullable
          : movieReview as List<MovieReviewModel>?,
    );
  }
}

extension $MovieDetailEntityCopyWith on MovieDetailEntity {
  /// Returns a callable class that can be used as follows: `instanceOfMovieDetailEntity.copyWith(...)` or like so:`instanceOfMovieDetailEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MovieDetailEntityCWProxy get copyWith =>
      _$MovieDetailEntityCWProxyImpl(this);
}
