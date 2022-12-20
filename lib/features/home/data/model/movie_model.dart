import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class MovieModel with _$MovieModel {
  const factory MovieModel({
    String? id,
    String? rank,
    String? rankUpDown,
    String? resultType,
    String? title,
    String? fullTitle,
    String? year,
    String? image,
    String? crew,
    String? imDbRating,
    String? imDbRatingCount,
    String? description,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}
