import 'package:movie_review_app/base/network/models/base_data.dart';
import 'package:movie_review_app/features/home/data/model/movie_model.dart';

abstract class HomeSource {
  Future<BaseListData<MovieModel>> getNowShowing();
  Future<BaseListData<MovieModel>> getComingSoon();
  Future<BaseListData<MovieModel>> getMovieResult({required String expression});
}
