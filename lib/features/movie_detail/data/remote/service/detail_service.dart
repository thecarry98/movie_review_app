import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_review_app/features/movie_detail/data/model/movie_auth_model.dart';
import 'package:movie_review_app/features/movie_detail/data/model/movie_detail_model.dart';
import 'package:movie_review_app/features/movie_detail/data/model/movie_review_model.dart';
import 'package:retrofit/http.dart';

import '../../../../../base/network/models/base_data.dart';

part 'detail_service.g.dart';

@RestApi()
@injectable
abstract class DetailService {
  @factoryMethod
  factory DetailService(Dio dio) = _DetailService;

  @GET('/{lang?}/API/Images/{apiKey}/{id}/{options?}')
  Future<BaseListData<MovieAuthModel>> getMovieAuth({
    @Path('lang?') String? language,
    @Path('apiKey') required String apiKey,
    @Path('id') required String id,
    @Path('options?') String? options,
  });

  @GET('/{lang?}/API/Title/{apiKey}/{id}/{options?}')
  Future<MovieDetailModel> getMovieDetail({
    @Path('lang?') String? language,
    @Path('apiKey') required String apiKey,
    @Path('id') required String id,
    @Path('options?') String? options,
  });

  @GET('/{lang?}/API/Reviews/{apiKey}/{id}')
  Future<BaseListData<MovieReviewModel>> getMovieReview({
    @Path('lang?') String? language,
    @Path('apiKey') required String apiKey,
    @Path('id') required String id,
  });
}
