import 'package:movie_review_app/base/network/models/base_data.dart';
import 'package:movie_review_app/features/home/data/model/movie_model.dart';
import 'package:movie_review_app/features/home/data/remote/service/home_service.dart';

abstract class HomeSource {
  Future<BaseListData<MovieModel>> getNowShowing();
  Future<BaseListData<MovieModel>> getComingSoon();
}
