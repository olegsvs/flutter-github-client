part of 'gists_bloc.dart';

@freezed
abstract class GistsState with _$GistsState {
  const factory GistsState.init() = InitState;
}