import 'package:movie_review_app/common/local_data/pref_key.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../common/index.dart';
import '../../../di/di_setup.dart';

const String token = "";

class DioInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final Map<String, dynamic> header = {};
    final prefs = await SharedPreferences.getInstance();
    // header["X-RapidAPI-Key"] =
    // "78d211523bmsh34d9b38775ea89bp1f0570jsn3659220c752a";
    // header["X-RapidAPI-Host"] = "free-nba.p.rapidapi.com";
    final token = prefs.get(PrefKeys.token);
    // const String tokenn = "7deb305a-c132-44fc-9fae-a080ddb391b2";
    header['Authorization'] = "Bearer $token";
    // getIt<LogUtils>().logI(header);
    final locale = prefs.get("locale");
    if (locale == "en_US") {
      header['lang'] = 'en';
    } else {
      header['lang'] = 'vi';
    }
    options.headers.addAll(header);
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    // ErrorHandling.withError(error: err);
    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }
}
