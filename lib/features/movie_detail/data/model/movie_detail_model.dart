import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_detail_model.freezed.dart';
part 'movie_detail_model.g.dart';

@freezed
class DirectorList with _$DirectorList {
  const factory DirectorList({
    String? id,
    String? name,
  }) = _DirectorList;

  factory DirectorList.fromJson(Map<String, dynamic> json) =>
      _$DirectorListFromJson(json);
}

@freezed
class WriterList with _$WriterList {
  const factory WriterList({
    String? id,
    String? name,
  }) = _WriterList;

  factory WriterList.fromJson(Map<String, dynamic> json) =>
      _$WriterListFromJson(json);
}

@freezed
class StarList with _$StarList {
  const factory StarList({
    String? id,
    String? name,
  }) = _StarList;

  factory StarList.fromJson(Map<String, dynamic> json) =>
      _$StarListFromJson(json);
}

@freezed
class ActorList with _$ActorList {
  const factory ActorList({
    String? id,
    String? image,
    String? name,
    String? asCharacter,
  }) = _ActorList;

  factory ActorList.fromJson(Map<String, dynamic> json) =>
      _$ActorListFromJson(json);
}

@freezed
class GenreList with _$GenreList {
  const factory GenreList({
    String? key,
    String? value,
  }) = _GenreList;

  factory GenreList.fromJson(Map<String, dynamic> json) =>
      _$GenreListFromJson(json);
}

@freezed
class CompanyList with _$CompanyList {
  const factory CompanyList({
    String? id,
    String? name,
  }) = _CompanyList;

  factory CompanyList.fromJson(Map<String, dynamic> json) =>
      _$CompanyListFromJson(json);
}

@freezed
class CountryList with _$CountryList {
  const factory CountryList({
    String? key,
    String? value,
  }) = _CountryList;

  factory CountryList.fromJson(Map<String, dynamic> json) =>
      _$CountryListFromJson(json);
}

@freezed
class LanguageList with _$LanguageList {
  const factory LanguageList({
    String? key,
    String? value,
  }) = _LanguageList;

  factory LanguageList.fromJson(Map<String, dynamic> json) =>
      _$LanguageListFromJson(json);
}

@freezed
class Items with _$Items {
  const factory Items({
    String? title,
    String? image,
  }) = _Items;

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
}

@freezed
class Images with _$Images {
  const factory Images({
    String? imDbId,
    String? title,
    String? fullTitle,
    String? type,
    String? year,
    List<Items>? items,
    String? errorMessage,
  }) = _Images;

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
}

@freezed
class Trailer with _$Trailer {
  const factory Trailer({
    String? imDbId,
    String? title,
    String? fullTitle,
    String? type,
    String? year,
    String? videoId,
    String? videoTitle,
    String? videoDescription,
    String? thumbnailUrl,
    String? uploadDate,
    String? link,
    String? linkEmbed,
    String? errorMessage,
  }) = _Trailer;

  factory Trailer.fromJson(Map<String, dynamic> json) =>
      _$TrailerFromJson(json);
}

@freezed
class BoxOffice with _$BoxOffice {
  const factory BoxOffice({
    String? budget,
    String? openingWeekendUSA,
    String? grossUSA,
    String? cumulativeWorldwideGross,
  }) = _BoxOffice;

  factory BoxOffice.fromJson(Map<String, dynamic> json) =>
      _$BoxOfficeFromJson(json);
}

@freezed
class Similars with _$Similars {
  const factory Similars({
    String? id,
    String? title,
    String? image,
    String? imDbRating,
  }) = _Similars;

  factory Similars.fromJson(Map<String, dynamic> json) =>
      _$SimilarsFromJson(json);
}

@freezed
class MovieDetailModel with _$MovieDetailModel {
  const factory MovieDetailModel({
    String? id,
    String? title,
    String? originalTitle,
    String? fullTitle,
    String? type,
    String? year,
    String? image,
    String? releaseDate,
    String? runtimeMins,
    String? runtimeStr,
    String? plot,
    String? plotLocal,
    bool? plotLocalIsRtl,
    String? awards,
    String? directors,
    List<DirectorList>? directorList,
    String? writers,
    List<WriterList>? writerList,
    String? stars,
    List<StarList>? starList,
    List<ActorList>? actorList,
    dynamic fullCast,
    String? genres,
    List<GenreList>? genreList,
    String? companies,
    List<CompanyList>? companyList,
    String? countries,
    List<CountryList>? countryList,
    String? languages,
    List<LanguageList>? languageList,
    String? contentRating,
    String? imDbRating,
    String? imDbRatingVotes,
    String? metacriticRating,
    dynamic ratings,
    dynamic wikipedia,
    dynamic posters,
    Images? images,
    Trailer? trailer,
    BoxOffice? boxOffice,
    dynamic tagline,
    String? keywords,
    List<String>? keywordList,
    List<Similars>? similars,
    dynamic tvSeriesInfo,
    dynamic tvEpisodeInfo,
    dynamic errorMessage,
  }) = _MovieDetailModel;

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailModelFromJson(json);
}
