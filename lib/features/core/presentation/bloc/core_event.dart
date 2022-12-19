part of 'core_bloc.dart';

@freezed
class CoreEvent with _$CoreEvent {
  const factory CoreEvent.init() = Init;
  const factory CoreEvent.changeIndex(int index) = ChangeIndex;
}
