import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_review_app/features/movie_detail/data/model/movie_review_model.dart';
import 'package:movie_review_app/features/movie_detail/data/model/movie_detail_model.dart';
import 'package:movie_review_app/features/movie_detail/data/model/movie_auth_model.dart';
import 'package:movie_review_app/base/network/errors/error.dart';
import 'package:movie_review_app/features/movie_detail/domain/repository/movie_detail_repo.dart';

import 'movie_detail_usecase.dart';

@Injectable(as: MovieDetailUsecase)
class MovieDetailUsecaseImpl implements MovieDetailUsecase {
  MovieDetailUsecaseImpl(this._repo);
  final MovieDetailRepo _repo;
  @override
  Future<Either<BaseError, List<MovieAuthModel>>> getMovieAuth(
      {required String id}) {
    return _repo.getMovieAuth(id: id);
  }

  @override
  Future<Either<BaseError, MovieDetailModel>> getMovieDetail(
      {required String id}) {
    return _repo.getMovieDetail(id: id);
  }

  @override
  Future<Either<BaseError, List<MovieReviewModel>>> getMovieReview(
      {required String id}) {
    return _repo.getMovieReview(id: id);
  }
}
