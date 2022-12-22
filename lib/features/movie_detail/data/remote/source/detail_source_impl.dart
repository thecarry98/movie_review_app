import 'package:injectable/injectable.dart';
import 'package:movie_review_app/features/movie_detail/data/model/movie_review_model.dart';
import 'package:movie_review_app/features/movie_detail/data/model/movie_detail_model.dart';
import 'package:movie_review_app/features/movie_detail/data/model/movie_auth_model.dart';
import 'package:movie_review_app/features/movie_detail/data/remote/service/detail_service.dart';

import '../../../../../base/network/models/base_data.dart';
import '../../../../../common/index.dart';
import 'detail_source.dart';

@Injectable(as: DetailSource)
class DetailSourceImpl implements DetailSource {
  DetailSourceImpl(this._service);
  final DetailService _service;
  @override
  Future<BaseListData<MovieAuthModel>> getMovieAuth({required String id}) {
    return _service.getMovieAuth(apiKey: AppToken.apiKey1, id: id);
  }

  @override
  Future<MovieDetailModel> getMovieDetail({required String id}) {
    return _service.getMovieDetail(
      id: id,
      apiKey: AppToken.apiKey2,
      options: 'FullActor,Images,Trailer,',
    );
  }

  @override
  Future<BaseListData<MovieReviewModel>> getMovieReview({required String id}) {
    return _service.getMovieReview(
      apiKey: AppToken.apiKey4,
      id: id,
    );
  }
}
