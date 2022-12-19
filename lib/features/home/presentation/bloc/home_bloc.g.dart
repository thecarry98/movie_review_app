// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$HomeStateCWProxy {
  HomeState isSearching(bool? isSearching);

  HomeState listMovie(List<MovieModel>? listMovie);

  HomeState message(String? message);

  HomeState status(BaseStateStatus status);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `HomeState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HomeState(...).copyWith(id: 12, name: "My name")
  /// ````
  HomeState call({
    bool? isSearching,
    List<MovieModel>? listMovie,
    String? message,
    BaseStateStatus? status,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfHomeState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfHomeState.copyWith.fieldName(...)`
class _$HomeStateCWProxyImpl implements _$HomeStateCWProxy {
  final HomeState _value;

  const _$HomeStateCWProxyImpl(this._value);

  @override
  HomeState isSearching(bool? isSearching) => this(isSearching: isSearching);

  @override
  HomeState listMovie(List<MovieModel>? listMovie) =>
      this(listMovie: listMovie);

  @override
  HomeState message(String? message) => this(message: message);

  @override
  HomeState status(BaseStateStatus status) => this(status: status);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `HomeState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HomeState(...).copyWith(id: 12, name: "My name")
  /// ````
  HomeState call({
    Object? isSearching = const $CopyWithPlaceholder(),
    Object? listMovie = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
  }) {
    return HomeState(
      isSearching: isSearching == const $CopyWithPlaceholder()
          ? _value.isSearching
          // ignore: cast_nullable_to_non_nullable
          : isSearching as bool?,
      listMovie: listMovie == const $CopyWithPlaceholder()
          ? _value.listMovie
          // ignore: cast_nullable_to_non_nullable
          : listMovie as List<MovieModel>?,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as BaseStateStatus,
    );
  }
}

extension $HomeStateCopyWith on HomeState {
  /// Returns a callable class that can be used as follows: `instanceOfHomeState.copyWith(...)` or like so:`instanceOfHomeState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$HomeStateCWProxy get copyWith => _$HomeStateCWProxyImpl(this);
}
