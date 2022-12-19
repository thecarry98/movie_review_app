import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_review_app/features/home/data/model/movie_model.dart';
import 'package:movie_review_app/features/home/domain/use_case/home_use_case.dart';

import '../../../../base/bloc/index.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.g.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  HomeBloc(this._useCase) : super(HomeState.init()) {
    on<HomeEvent>((HomeEvent event, Emitter<HomeState> emit) async {
      await event.when(
          init: (int index) => _onInit(index, emit),
          searching: () => _onSearching(emit));
    });
  }

  final HomeUseCase _useCase;
  bool isSearching = false;
  _onInit(int index, Emitter<HomeState> emit) async {
    print(index);
    //  res;
    // emit(state.copyWith(
    //   isSearching: isSearching,
    // ));
    emit(
      state.copyWith(
        status: BaseStateStatus.loading,
        isSearching: isSearching,
      ),
    );
    switch (index) {
      case 0:
        final res = await _useCase.getNowShowing();
        emit(
          res.fold(
            (l) => state.copyWith(status: BaseStateStatus.failed),
            (r) => state.copyWith(
              listMovie: r,
              isSearching: isSearching,
              status: BaseStateStatus.success,
            ),
          ),
        );
        break;
      case 1:
        final res = await _useCase.getComingSoon();
        res.fold(
          (l) => state.copyWith(status: BaseStateStatus.failed),
          (r) => state.copyWith(
            listMovie: r,
            isSearching: isSearching,
            status: BaseStateStatus.success,
          ),
        );
        break;
    }
  }

  _onSearching(Emitter<HomeState> emit) async {
    isSearching = !isSearching;
    emit(state.copyWith(
      isSearching: isSearching,
    ));
  }
}
