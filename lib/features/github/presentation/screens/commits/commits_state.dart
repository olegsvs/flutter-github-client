part of 'commits_bloc.dart';

@freezed
abstract class CommitsState with _$CommitsState {
  const factory CommitsState.init() = InitState;
}