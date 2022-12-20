import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_data.g.dart';

@JsonSerializable(
  genericArgumentFactories: true,
  anyMap: true,
  explicitToJson: true,
)
class BaseListData<T> {
  BaseListData({this.data, this.status, this.result});

  factory BaseListData.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$BaseListDataFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$BaseListDataToJson(this, toJsonT);

  @JsonKey(name: 'data')
  List<T>? data;
  @JsonKey(name: 'items')
  List<T>? items;
  @JsonKey(name: 'result')
  List<T>? result;
  @JsonKey(name: 'results')
  List<T>? results;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'message')
  String? message;
  @JsonKey(name: 'msg')
  String? msg;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'totalPage')
  int? totalPage;
  @JsonKey(name: 'totalItem')
  dynamic totalItem; //todo
}

@JsonSerializable(
  genericArgumentFactories: true,
  anyMap: true,
  explicitToJson: true,
)
class BaseData<T> {
  BaseData({this.data, this.status});

  factory BaseData.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$BaseDataFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$BaseDataToJson(this, toJsonT);

  @JsonKey(name: 'data')
  T? data;
  @JsonKey(name: 'result')
  T? result;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'message')
  String? message;
  @JsonKey(name: 'msg')
  String? msg;
  @JsonKey(name: 'name')
  String? name;
}
