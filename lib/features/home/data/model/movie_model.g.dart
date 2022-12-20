// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieModel _$$_MovieModelFromJson(Map<String, dynamic> json) =>
    _$_MovieModel(
      id: json['id'] as String?,
      rank: json['rank'] as String?,
      rankUpDown: json['rankUpDown'] as String?,
      resultType: json['resultType'] as String?,
      title: json['title'] as String?,
      fullTitle: json['fullTitle'] as String?,
      year: json['year'] as String?,
      image: json['image'] as String?,
      crew: json['crew'] as String?,
      imDbRating: json['imDbRating'] as String?,
      imDbRatingCount: json['imDbRatingCount'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_MovieModelToJson(_$_MovieModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rank': instance.rank,
      'rankUpDown': instance.rankUpDown,
      'resultType': instance.resultType,
      'title': instance.title,
      'fullTitle': instance.fullTitle,
      'year': instance.year,
      'image': instance.image,
      'crew': instance.crew,
      'imDbRating': instance.imDbRating,
      'imDbRatingCount': instance.imDbRatingCount,
      'description': instance.description,
    };
