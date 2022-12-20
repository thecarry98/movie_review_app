import 'package:injectable/injectable.dart';
import 'package:movie_review_app/common/index.dart';
import 'package:movie_review_app/features/home/data/model/movie_model.dart';
import 'package:movie_review_app/base/network/models/base_data.dart';
import 'package:movie_review_app/features/home/data/remote/service/home_service.dart';

import 'home_source.dart';

@Injectable(as: HomeSource)
class HomeSourceImpl implements HomeSource {
  HomeSourceImpl(this._service);
  final HomeService _service;
  @override
  Future<BaseListData<MovieModel>> getComingSoon() {
    return _service.getComingSoon(apiKey: AppToken.apiKey3);
  }

  @override
  Future<BaseListData<MovieModel>> getNowShowing() {
    return _service.getNowShowing(apiKey: AppToken.apiKey6);
  }

  @override
  Future<BaseListData<MovieModel>> getMovieResult(
      {required String expression}) {
    return _service.getMovieResult(
      apiKey: AppToken.apiKey1,
      expression: expression,
    );
  }
}
