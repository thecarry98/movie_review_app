// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseListData<T> _$BaseListDataFromJson<T>(
  Map json,
  T Function(Object? json) fromJsonT,
) =>
    BaseListData<T>(
      data: (json['data'] as List<dynamic>?)?.map(fromJsonT).toList(),
      status: json['status'] as String?,
      result: (json['result'] as List<dynamic>?)?.map(fromJsonT).toList(),
    )
      ..items = (json['items'] as List<dynamic>?)?.map(fromJsonT).toList()
      ..results = (json['results'] as List<dynamic>?)?.map(fromJsonT).toList()
      ..message = json['message'] as String?
      ..msg = json['msg'] as String?
      ..name = json['name'] as String?
      ..totalPage = json['totalPage'] as int?
      ..totalItem = json['totalItem'];

Map<String, dynamic> _$BaseListDataToJson<T>(
  BaseListData<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': instance.data?.map(toJsonT).toList(),
      'items': instance.items?.map(toJsonT).toList(),
      'result': instance.result?.map(toJsonT).toList(),
      'results': instance.results?.map(toJsonT).toList(),
      'status': instance.status,
      'message': instance.message,
      'msg': instance.msg,
      'name': instance.name,
      'totalPage': instance.totalPage,
      'totalItem': instance.totalItem,
    };

BaseData<T> _$BaseDataFromJson<T>(
  Map json,
  T Function(Object? json) fromJsonT,
) =>
    BaseData<T>(
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      status: json['status'] as String?,
    )
      ..result = _$nullableGenericFromJson(json['result'], fromJsonT)
      ..message = json['message'] as String?
      ..msg = json['msg'] as String?
      ..name = json['name'] as String?;

Map<String, dynamic> _$BaseDataToJson<T>(
  BaseData<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'result': _$nullableGenericToJson(instance.result, toJsonT),
      'status': instance.status,
      'message': instance.message,
      'msg': instance.msg,
      'name': instance.name,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
