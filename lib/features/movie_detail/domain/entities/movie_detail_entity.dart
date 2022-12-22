import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:movie_review_app/features/movie_detail/data/model/movie_auth_model.dart';
import 'package:movie_review_app/features/movie_detail/data/model/movie_detail_model.dart';
import 'package:movie_review_app/features/movie_detail/data/model/movie_review_model.dart';

part 'movie_detail_entity.g.dart';

@CopyWith()
class MovieDetailEntity {
  final String? id;
  final MovieAuthModel? movieAuth;
  final MovieDetailModel? movieDetail;
  final List<MovieReviewModel>? movieReview;

  MovieDetailEntity({
    this.id,
    this.movieAuth,
    this.movieDetail,
    this.movieReview,
  });
}
