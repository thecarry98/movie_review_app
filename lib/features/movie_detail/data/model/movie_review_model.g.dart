// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieReviewModel _$$_MovieReviewModelFromJson(Map<String, dynamic> json) =>
    _$_MovieReviewModel(
      username: json['username'] as String?,
      userUrl: json['userUrl'] as String?,
      reviewLink: json['reviewLink'] as String?,
      warningSpoilers: json['warningSpoilers'] as bool?,
      date: json['date'] as String?,
      rate: json['rate'] as String?,
      helpful: json['helpful'] as String?,
      title: json['title'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$_MovieReviewModelToJson(_$_MovieReviewModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'userUrl': instance.userUrl,
      'reviewLink': instance.reviewLink,
      'warningSpoilers': instance.warningSpoilers,
      'date': instance.date,
      'rate': instance.rate,
      'helpful': instance.helpful,
      'title': instance.title,
      'content': instance.content,
    };
