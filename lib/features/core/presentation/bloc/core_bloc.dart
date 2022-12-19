import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../base/bloc/index.dart';

part 'core_event.dart';
part 'core_state.dart';
part 'core_bloc.g.dart';
part 'core_bloc.freezed.dart';

@injectable
class CoreBloc extends BaseBloc<CoreEvent, CoreState> {
  CoreBloc() : super(CoreState.init()) {
    on<CoreEvent>((CoreEvent event, Emitter<CoreState> emit) async {
      await event.when(
          init: () => _onInit(emit),
          changeIndex: (int index) => _onChangeIndex(index, emit));
    });
  }

  _onInit(Emitter<CoreState> emit) {
    emit(state.copyWith(index: 0));
  }

  _onChangeIndex(int index, Emitter<CoreState> emit) {
    emit(state.copyWith(index: index));
  }
}
