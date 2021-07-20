part of 'pulls_bloc.dart';

@freezed
abstract class PullsState with _$PullsState {
  const factory PullsState.init() = InitState;
}