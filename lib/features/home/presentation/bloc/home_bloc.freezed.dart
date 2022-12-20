// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() searching,
    required TResult Function(int index) changeTab,
    required TResult Function(String expression) getMovieResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? searching,
    TResult? Function(int index)? changeTab,
    TResult? Function(String expression)? getMovieResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? searching,
    TResult Function(int index)? changeTab,
    TResult Function(String expression)? getMovieResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Searching value) searching,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(GetMovieResult value) getMovieResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(Searching value)? searching,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(GetMovieResult value)? getMovieResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Searching value)? searching,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(GetMovieResult value)? getMovieResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitCopyWith<$Res> {
  factory _$$InitCopyWith(_$Init value, $Res Function(_$Init) then) =
      __$$InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res, _$Init>
    implements _$$InitCopyWith<$Res> {
  __$$InitCopyWithImpl(_$Init _value, $Res Function(_$Init) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Init implements Init {
  const _$Init();

  @override
  String toString() {
    return 'HomeEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() searching,
    required TResult Function(int index) changeTab,
    required TResult Function(String expression) getMovieResult,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? searching,
    TResult? Function(int index)? changeTab,
    TResult? Function(String expression)? getMovieResult,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? searching,
    TResult Function(int index)? changeTab,
    TResult Function(String expression)? getMovieResult,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Searching value) searching,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(GetMovieResult value) getMovieResult,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(Searching value)? searching,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(GetMovieResult value)? getMovieResult,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Searching value)? searching,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(GetMovieResult value)? getMovieResult,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements HomeEvent {
  const factory Init() = _$Init;
}

/// @nodoc
abstract class _$$SearchingCopyWith<$Res> {
  factory _$$SearchingCopyWith(
          _$Searching value, $Res Function(_$Searching) then) =
      __$$SearchingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchingCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$Searching>
    implements _$$SearchingCopyWith<$Res> {
  __$$SearchingCopyWithImpl(
      _$Searching _value, $Res Function(_$Searching) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Searching implements Searching {
  const _$Searching();

  @override
  String toString() {
    return 'HomeEvent.searching()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Searching);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() searching,
    required TResult Function(int index) changeTab,
    required TResult Function(String expression) getMovieResult,
  }) {
    return searching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? searching,
    TResult? Function(int index)? changeTab,
    TResult? Function(String expression)? getMovieResult,
  }) {
    return searching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? searching,
    TResult Function(int index)? changeTab,
    TResult Function(String expression)? getMovieResult,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Searching value) searching,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(GetMovieResult value) getMovieResult,
  }) {
    return searching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(Searching value)? searching,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(GetMovieResult value)? getMovieResult,
  }) {
    return searching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Searching value)? searching,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(GetMovieResult value)? getMovieResult,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class Searching implements HomeEvent {
  const factory Searching() = _$Searching;
}

/// @nodoc
abstract class _$$ChangeTabCopyWith<$Res> {
  factory _$$ChangeTabCopyWith(
          _$ChangeTab value, $Res Function(_$ChangeTab) then) =
      __$$ChangeTabCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeTabCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ChangeTab>
    implements _$$ChangeTabCopyWith<$Res> {
  __$$ChangeTabCopyWithImpl(
      _$ChangeTab _value, $Res Function(_$ChangeTab) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeTab(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeTab implements ChangeTab {
  const _$ChangeTab(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.changeTab(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTab &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTabCopyWith<_$ChangeTab> get copyWith =>
      __$$ChangeTabCopyWithImpl<_$ChangeTab>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() searching,
    required TResult Function(int index) changeTab,
    required TResult Function(String expression) getMovieResult,
  }) {
    return changeTab(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? searching,
    TResult? Function(int index)? changeTab,
    TResult? Function(String expression)? getMovieResult,
  }) {
    return changeTab?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? searching,
    TResult Function(int index)? changeTab,
    TResult Function(String expression)? getMovieResult,
    required TResult orElse(),
  }) {
    if (changeTab != null) {
      return changeTab(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Searching value) searching,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(GetMovieResult value) getMovieResult,
  }) {
    return changeTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(Searching value)? searching,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(GetMovieResult value)? getMovieResult,
  }) {
    return changeTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Searching value)? searching,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(GetMovieResult value)? getMovieResult,
    required TResult orElse(),
  }) {
    if (changeTab != null) {
      return changeTab(this);
    }
    return orElse();
  }
}

abstract class ChangeTab implements HomeEvent {
  const factory ChangeTab(final int index) = _$ChangeTab;

  int get index;
  @JsonKey(ignore: true)
  _$$ChangeTabCopyWith<_$ChangeTab> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMovieResultCopyWith<$Res> {
  factory _$$GetMovieResultCopyWith(
          _$GetMovieResult value, $Res Function(_$GetMovieResult) then) =
      __$$GetMovieResultCopyWithImpl<$Res>;
  @useResult
  $Res call({String expression});
}

/// @nodoc
class __$$GetMovieResultCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetMovieResult>
    implements _$$GetMovieResultCopyWith<$Res> {
  __$$GetMovieResultCopyWithImpl(
      _$GetMovieResult _value, $Res Function(_$GetMovieResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expression = null,
  }) {
    return _then(_$GetMovieResult(
      null == expression
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetMovieResult implements GetMovieResult {
  const _$GetMovieResult(this.expression);

  @override
  final String expression;

  @override
  String toString() {
    return 'HomeEvent.getMovieResult(expression: $expression)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMovieResult &&
            (identical(other.expression, expression) ||
                other.expression == expression));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expression);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMovieResultCopyWith<_$GetMovieResult> get copyWith =>
      __$$GetMovieResultCopyWithImpl<_$GetMovieResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() searching,
    required TResult Function(int index) changeTab,
    required TResult Function(String expression) getMovieResult,
  }) {
    return getMovieResult(expression);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? searching,
    TResult? Function(int index)? changeTab,
    TResult? Function(String expression)? getMovieResult,
  }) {
    return getMovieResult?.call(expression);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? searching,
    TResult Function(int index)? changeTab,
    TResult Function(String expression)? getMovieResult,
    required TResult orElse(),
  }) {
    if (getMovieResult != null) {
      return getMovieResult(expression);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Searching value) searching,
    required TResult Function(ChangeTab value) changeTab,
    required TResult Function(GetMovieResult value) getMovieResult,
  }) {
    return getMovieResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(Searching value)? searching,
    TResult? Function(ChangeTab value)? changeTab,
    TResult? Function(GetMovieResult value)? getMovieResult,
  }) {
    return getMovieResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Searching value)? searching,
    TResult Function(ChangeTab value)? changeTab,
    TResult Function(GetMovieResult value)? getMovieResult,
    required TResult orElse(),
  }) {
    if (getMovieResult != null) {
      return getMovieResult(this);
    }
    return orElse();
  }
}

abstract class GetMovieResult implements HomeEvent {
  const factory GetMovieResult(final String expression) = _$GetMovieResult;

  String get expression;
  @JsonKey(ignore: true)
  _$$GetMovieResultCopyWith<_$GetMovieResult> get copyWith =>
      throw _privateConstructorUsedError;
}
