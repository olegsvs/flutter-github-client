part of 'gists_files_bloc.dart';

@freezed
abstract class GistsFilesState with _$GistsFilesState {
  const factory GistsFilesState.init() = InitState;
}