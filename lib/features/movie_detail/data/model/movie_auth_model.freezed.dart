// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieAuthModel _$MovieAuthModelFromJson(Map<String, dynamic> json) {
  return _MovieAuthModel.fromJson(json);
}

/// @nodoc
mixin _$MovieAuthModel {
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieAuthModelCopyWith<MovieAuthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieAuthModelCopyWith<$Res> {
  factory $MovieAuthModelCopyWith(
          MovieAuthModel value, $Res Function(MovieAuthModel) then) =
      _$MovieAuthModelCopyWithImpl<$Res, MovieAuthModel>;
  @useResult
  $Res call({String? title, String? image});
}

/// @nodoc
class _$MovieAuthModelCopyWithImpl<$Res, $Val extends MovieAuthModel>
    implements $MovieAuthModelCopyWith<$Res> {
  _$MovieAuthModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieAuthModelCopyWith<$Res>
    implements $MovieAuthModelCopyWith<$Res> {
  factory _$$_MovieAuthModelCopyWith(
          _$_MovieAuthModel value, $Res Function(_$_MovieAuthModel) then) =
      __$$_MovieAuthModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? image});
}

/// @nodoc
class __$$_MovieAuthModelCopyWithImpl<$Res>
    extends _$MovieAuthModelCopyWithImpl<$Res, _$_MovieAuthModel>
    implements _$$_MovieAuthModelCopyWith<$Res> {
  __$$_MovieAuthModelCopyWithImpl(
      _$_MovieAuthModel _value, $Res Function(_$_MovieAuthModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_MovieAuthModel(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieAuthModel implements _MovieAuthModel {
  const _$_MovieAuthModel({this.title, this.image});

  factory _$_MovieAuthModel.fromJson(Map<String, dynamic> json) =>
      _$$_MovieAuthModelFromJson(json);

  @override
  final String? title;
  @override
  final String? image;

  @override
  String toString() {
    return 'MovieAuthModel(title: $title, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieAuthModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieAuthModelCopyWith<_$_MovieAuthModel> get copyWith =>
      __$$_MovieAuthModelCopyWithImpl<_$_MovieAuthModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieAuthModelToJson(
      this,
    );
  }
}

abstract class _MovieAuthModel implements MovieAuthModel {
  const factory _MovieAuthModel({final String? title, final String? image}) =
      _$_MovieAuthModel;

  factory _MovieAuthModel.fromJson(Map<String, dynamic> json) =
      _$_MovieAuthModel.fromJson;

  @override
  String? get title;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_MovieAuthModelCopyWith<_$_MovieAuthModel> get copyWith =>
      throw _privateConstructorUsedError;
}
