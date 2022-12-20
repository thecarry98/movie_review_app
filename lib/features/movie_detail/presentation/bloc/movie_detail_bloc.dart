import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../base/bloc/index.dart';

part 'movie_detail_event.dart';
part 'movie_detail_state.dart';
part 'movie_detail_bloc.g.dart';
part 'movie_detail_bloc.freezed.dart';

@injectable
class MovieDetailBloc extends BaseBloc<MovieDetailEvent, MovieDetailState> {
  MovieDetailBloc() : super(MovieDetailState.init()) {
    on<MovieDetailEvent>(
        (MovieDetailEvent event, Emitter<MovieDetailState> emit) async {
      await event.when(init: (String id) => _onInit(id, emit));
    });
  }
  _onInit(String id, Emitter<MovieDetailState> emit) async {}
}
