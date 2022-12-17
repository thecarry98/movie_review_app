// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:event_bus/event_bus.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../common/local_data/shared_pref.dart' as _i8;
import '../common/logger/logger.dart' as _i9;
import '../common/notification/local_notification_helper.dart' as _i7;
import '../common/utils/snack_bar/snack_bar_helper.dart' as _i10;
import '../features/core/presentation/bloc/core_bloc.dart' as _i4;
import '../routes/app_pages.dart' as _i3;
import 'app_module.dart' as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  gh.singleton<_i3.AppPages>(_i3.AppPages());
  gh.factory<_i4.CoreBloc>(() => _i4.CoreBloc());
  gh.singleton<_i5.Dio>(appModule.dio);
  gh.singleton<_i6.EventBus>(appModule.eventBus);
  gh.singleton<_i7.LocalNotificationHelper>(_i7.LocalNotificationHelper());
  gh.factory<_i8.LocalStorage>(() => _i8.LocalStorageImpl());
  gh.singleton<_i9.LogUtils>(_i9.LogUtils());
  gh.singleton<_i10.SnackBarHelper>(_i10.SnackBarHelper());
  return get;
}

class _$AppModule extends _i11.AppModule {}
