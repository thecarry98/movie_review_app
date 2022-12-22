import 'package:dartz/dartz.dart';
import 'package:movie_review_app/base/network/errors/error.dart';
import 'package:movie_review_app/features/movie_detail/data/model/movie_auth_model.dart';
import 'package:movie_review_app/features/movie_detail/data/model/movie_review_model.dart';

import '../../data/model/movie_detail_model.dart';

abstract class MovieDetailRepo {
  Future<Either<BaseError, List<MovieAuthModel>>> getMovieAuth(
      {required String id});
  Future<Either<BaseError, MovieDetailModel>> getMovieDetail(
      {required String id});
  Future<Either<BaseError, List<MovieReviewModel>>> getMovieReview(
      {required String id});
}
