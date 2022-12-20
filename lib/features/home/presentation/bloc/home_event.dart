part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.init() = Init;
  const factory HomeEvent.searching() = Searching;
  const factory HomeEvent.changeTab(int index) = ChangeTab;
  const factory HomeEvent.getMovieResult(String expression) = GetMovieResult;
}
