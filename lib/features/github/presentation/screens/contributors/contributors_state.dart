part of 'contributors_bloc.dart';

@freezed
abstract class ContributorsState with _$ContributorsState {
  const factory ContributorsState.init() = InitState;
}