part of 'core_bloc.dart';

@CopyWith()
class CoreState extends BaseBlocState {
  const CoreState({required super.status, super.message, this.index});
  final int? index;

  factory CoreState.init() => const CoreState(status: BaseStateStatus.init);

  @override
  List get props => [status, message, index];
}
