import 'package:dartz/dartz.dart';

import '../../../../base/network/errors/error.dart';
import '../../data/model/movie_auth_model.dart';
import '../../data/model/movie_detail_model.dart';
import '../../data/model/movie_review_model.dart';

abstract class MovieDetailUsecase {
  Future<Either<BaseError, List<MovieAuthModel>>> getMovieAuth(
      {required String id});
  Future<Either<BaseError, MovieDetailModel>> getMovieDetail(
      {required String id});
  Future<Either<BaseError, List<MovieReviewModel>>> getMovieReview(
      {required String id});
}
