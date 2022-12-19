import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_review_app/base/network/errors/extension.dart';
import 'package:movie_review_app/features/home/data/model/movie_model.dart';
import 'package:movie_review_app/base/network/errors/error.dart';
import 'package:movie_review_app/features/home/data/remote/source/home_source.dart';

import '../../domain/repository/home_repo.dart';

@Injectable(as: HomeRepo)
class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl(this._source);
  final HomeSource _source;
  @override
  Future<Either<BaseError, List<MovieModel>>> getComingSoon() async {
    try {
      final res = await _source.getComingSoon();
      return right(res.items!);
    } on DioError catch (e) {
      return left(e.baseError);
    }
  }

  @override
  Future<Either<BaseError, List<MovieModel>>> getNowShowing() async {
    try {
      final res = await _source.getNowShowing();
      return right(res.items!);
    } on DioError catch (e) {
      return left(e.baseError);
    }
  }
}
