part of 'home_bloc.dart';

@CopyWith()
class HomeState extends BaseBlocState {
  const HomeState({
    required super.status,
    super.message,
    this.isSearching,
    this.listMovie,
  });

  final bool? isSearching;
  final List<MovieModel>? listMovie;

  factory HomeState.init() => const HomeState(status: BaseStateStatus.init);
  @override
  List get props => [
        status,
        message,
        isSearching,
        listMovie,
      ];
}
