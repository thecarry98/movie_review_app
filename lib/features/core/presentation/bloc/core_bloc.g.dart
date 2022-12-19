// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CoreStateCWProxy {
  CoreState index(int? index);

  CoreState message(String? message);

  CoreState status(BaseStateStatus status);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CoreState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CoreState(...).copyWith(id: 12, name: "My name")
  /// ````
  CoreState call({
    int? index,
    String? message,
    BaseStateStatus? status,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCoreState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCoreState.copyWith.fieldName(...)`
class _$CoreStateCWProxyImpl implements _$CoreStateCWProxy {
  final CoreState _value;

  const _$CoreStateCWProxyImpl(this._value);

  @override
  CoreState index(int? index) => this(index: index);

  @override
  CoreState message(String? message) => this(message: message);

  @override
  CoreState status(BaseStateStatus status) => this(status: status);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CoreState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CoreState(...).copyWith(id: 12, name: "My name")
  /// ````
  CoreState call({
    Object? index = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
  }) {
    return CoreState(
      index: index == const $CopyWithPlaceholder()
          ? _value.index
          // ignore: cast_nullable_to_non_nullable
          : index as int?,
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

extension $CoreStateCopyWith on CoreState {
  /// Returns a callable class that can be used as follows: `instanceOfCoreState.copyWith(...)` or like so:`instanceOfCoreState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CoreStateCWProxy get copyWith => _$CoreStateCWProxyImpl(this);
}
