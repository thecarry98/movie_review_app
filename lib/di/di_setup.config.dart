// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:event_bus/event_bus.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../common/local_data/shared_pref.dart' as _i11;
import '../common/logger/logger.dart' as _i12;
import '../common/notification/local_notification_helper.dart' as _i10;
import '../common/utils/snack_bar/snack_bar_helper.dart' as _i14;
import '../features/core/presentation/bloc/core_bloc.dart' as _i4;
import '../features/home/data/remote/service/home_service.dart' as _i7;
import '../features/home/data/remote/source/home_source.dart' as _i8;
import '../features/home/data/remote/source/home_source_impl.dart' as _i9;
import '../features/home/data/repository/home_repo_impl.dart' as _i16;
import '../features/home/domain/repository/home_repo.dart' as _i15;
import '../features/home/domain/use_case/home_use_case.dart' as _i17;
import '../features/home/domain/use_case/home_use_case_impl.dart' as _i18;
import '../features/home/presentation/bloc/home_bloc.dart' as _i19;
import '../features/movie_detail/presentation/bloc/movie_detail_bloc.dart'
    as _i13;
import '../routes/app_pages.dart' as _i3;
import 'app_module.dart' as _i20; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i7.HomeService>(() => _i7.HomeService(get<_i5.Dio>()));
  gh.factory<_i8.HomeSource>(() => _i9.HomeSourceImpl(get<_i7.HomeService>()));
  gh.singleton<_i10.LocalNotificationHelper>(_i10.LocalNotificationHelper());
  gh.factory<_i11.LocalStorage>(() => _i11.LocalStorageImpl());
  gh.singleton<_i12.LogUtils>(_i12.LogUtils());
  gh.factory<_i13.MovieDetailBloc>(() => _i13.MovieDetailBloc());
  gh.singleton<_i14.SnackBarHelper>(_i14.SnackBarHelper());
  gh.factory<_i15.HomeRepo>(() => _i16.HomeRepoImpl(get<_i8.HomeSource>()));
  gh.factory<_i17.HomeUseCase>(
      () => _i18.HomeUseCaseImpl(get<_i15.HomeRepo>()));
  gh.factory<_i19.HomeBloc>(() => _i19.HomeBloc(get<_i17.HomeUseCase>()));
  return get;
}

class _$AppModule extends _i20.AppModule {}
