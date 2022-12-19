import 'package:dartz/dartz.dart';
import 'package:movie_review_app/base/network/errors/error.dart';
import 'package:movie_review_app/features/home/data/model/movie_model.dart';

abstract class HomeUseCase {
  Future<Either<BaseError, List<MovieModel>>> getNowShowing();
  Future<Either<BaseError, List<MovieModel>>> getComingSoon();
}
