import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_review_model.freezed.dart';
part 'movie_review_model.g.dart';

@freezed
class MovieReviewModel with _$MovieReviewModel {
  const factory MovieReviewModel({
    String? username,
    String? userUrl,
    String? reviewLink,
    bool? warningSpoilers,
    String? date,
    String? rate,
    String? helpful,
    String? title,
    String? content,
  }) = _MovieReviewModel;

  factory MovieReviewModel.fromJson(Map<String, dynamic> json) =>
      _$MovieReviewModelFromJson(json);
}
