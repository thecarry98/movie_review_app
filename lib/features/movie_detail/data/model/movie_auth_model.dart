import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_auth_model.freezed.dart';
part 'movie_auth_model.g.dart';

@freezed
class MovieAuthModel with _$MovieAuthModel {
  const factory MovieAuthModel({
    String? title,
    String? image,
  }) = _MovieAuthModel;

  factory MovieAuthModel.fromJson(Map<String, dynamic> json) =>
      _$MovieAuthModelFromJson(json);
}
