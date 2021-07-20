part of 'repo_bloc.dart';

@freezed
abstract class RepoState with _$RepoState {
  const factory RepoState.init() = InitState;
}