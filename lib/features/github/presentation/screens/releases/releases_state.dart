part of 'releases_bloc.dart';

@freezed
abstract class ReleasesState with _$ReleasesState {
  const factory ReleasesState.init() = InitState;
}