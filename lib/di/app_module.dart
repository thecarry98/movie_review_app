import 'package:aicycle_collection_app/base/network/dio/dio_builder.dart';
import 'package:dio/dio.dart';
import 'package:event_bus/event_bus.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @singleton
  Dio get dio => DioBuilder().getDio();
  @singleton
  EventBus get eventBus => EventBus();
}
