import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_review_app/features/home/data/model/movie_model.dart';
import 'package:movie_review_app/base/network/errors/error.dart';
import 'package:movie_review_app/features/home/domain/use_case/home_use_case.dart';

import '../repository/home_repo.dart';

@Injectable(as: HomeUseCase)
class HomeUseCaseImpl implements HomeUseCase {
  final HomeRepo _repo;
  HomeUseCaseImpl(this._repo);
  @override
  Future<Either<BaseError, List<MovieModel>>> getComingSoon() {
    return _repo.getComingSoon();
  }

  @override
  Future<Either<BaseError, List<MovieModel>>> getNowShowing() {
    return _repo.getNowShowing();
  }

  @override
  Future<Either<BaseError, List<MovieModel>>> getMovieResult(
      {required String expression}) {
    return _repo.getMovieResult(expression: expression);
  }
}
