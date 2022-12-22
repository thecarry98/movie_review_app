import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_review_app/base/network/errors/extension.dart';
import 'package:movie_review_app/features/movie_detail/data/model/movie_review_model.dart';
import 'package:movie_review_app/features/movie_detail/data/model/movie_detail_model.dart';
import 'package:movie_review_app/features/movie_detail/data/model/movie_auth_model.dart';
import 'package:movie_review_app/base/network/errors/error.dart';
import 'package:movie_review_app/features/movie_detail/data/remote/source/detail_source.dart';

import '../../domain/repository/movie_detail_repo.dart';

@Injectable(as: MovieDetailRepo)
class MovieDetailRepoImpl implements MovieDetailRepo {
  MovieDetailRepoImpl(this._source);
  final DetailSource _source;
  @override
  Future<Either<BaseError, List<MovieAuthModel>>> getMovieAuth(
      {required String id}) async {
    try {
      final res = await _source.getMovieAuth(id: id);
      return right(res.items!);
    } on DioError catch (e) {
      return left(e.baseError);
    }
  }

  @override
  Future<Either<BaseError, MovieDetailModel>> getMovieDetail(
      {required String id}) async {
    try {
      final res = await _source.getMovieDetail(id: id);
      return right(res);
    } on DioError catch (e) {
      return left(e.baseError);
    }
  }

  @override
  Future<Either<BaseError, List<MovieReviewModel>>> getMovieReview(
      {required String id}) async {
    try {
      final res = await _source.getMovieReview(id: id);
      return right(res.items!);
    } on DioError catch (e) {
      return left(e.baseError);
    }
  }
}
