import 'dart:convert';

import 'package:event_bus/event_bus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/index.dart';
import '../../common/local_data/pref_key.dart';
import '../../di/di_setup.dart';
import 'base_bloc_state.dart';

abstract class BaseBloc<E, S extends BaseBlocState> extends Bloc<E, S> {
  BaseBloc(super.initialState);
  final localPref = getIt<LocalStorage>();
  final eventBus = getIt<EventBus>();
  // Future<AssessorInfo> getUser() async {
  //   final res = await localPref.get(PrefKeys.assessorInfo);
  //   return AssessorInfo.fromJson(jsonDecode(res));
  // }

  // Future<void> logOut() async {
  //   await localPref.remove(PrefKeys.assessorInfo);
  //   await localPref.remove(PrefKeys.token);
  // }
}
