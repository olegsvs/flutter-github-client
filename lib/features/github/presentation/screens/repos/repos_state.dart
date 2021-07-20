part of 'repos_bloc.dart';

@freezed
abstract class ReposState with _$ReposState {
  const factory ReposState.init() = InitState;
}