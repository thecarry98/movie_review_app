part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.init(int index) = Init;
  const factory HomeEvent.searching() = Searching;
}
