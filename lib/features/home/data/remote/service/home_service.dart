import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_review_app/features/home/data/model/movie_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../base/network/models/base_data.dart';

part 'home_service.g.dart';

@RestApi()
@injectable
abstract class HomeService {
  @factoryMethod
  factory HomeService(Dio dio) = _HomeService;

  @GET('/{lang?}/API/Top250Movies/{apiKey}')
  Future<BaseListData<MovieModel>> getComingSoon({
    @Path('lang?') String? language,
    @Path('apiKey') required String apiKey,
  });

  @GET('/{lang?}/API/MostPopularMovies/{apiKey}')
  Future<BaseListData<MovieModel>> getNowShowing({
    @Path('lang?') String? language,
    @Path('apiKey') required String apiKey,
  });

  //get now showing : most popular
  //get coming soon: get top 250 movies
}
