import 'package:movie_review_app/features/movie_detail/data/model/movie_auth_model.dart';
import 'package:movie_review_app/features/movie_detail/data/model/movie_detail_model.dart';
import 'package:movie_review_app/features/movie_detail/data/model/movie_review_model.dart';

import '../../../../../base/network/models/base_data.dart';

abstract class DetailSource {
  Future<BaseListData<MovieAuthModel>> getMovieAuth({required String id});
  Future<MovieDetailModel> getMovieDetail({required String id});
  Future<BaseListData<MovieReviewModel>> getMovieReview({required String id});
}
