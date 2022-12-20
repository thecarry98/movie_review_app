part of 'movie_detail_bloc.dart';

@CopyWith()
class MovieDetailState extends BaseBlocState {
  MovieDetailState({required super.status, super.message});

  factory MovieDetailState.init() =>
      MovieDetailState(status: BaseStateStatus.init);

  @override
  List get props => [status, message];
}
