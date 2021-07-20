part of 'orgs_bloc.dart';

@freezed
abstract class OrgsState with _$OrgsState {
  const factory OrgsState.init() = InitState;
}