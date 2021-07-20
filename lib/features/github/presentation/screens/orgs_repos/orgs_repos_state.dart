part of 'orgs_repos_bloc.dart';

@freezed
abstract class OrgsReposState with _$OrgsReposState {
  const factory OrgsReposState.init() = InitState;
}