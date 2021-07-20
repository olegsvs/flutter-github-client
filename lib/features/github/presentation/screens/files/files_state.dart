part of 'files_bloc.dart';

@freezed
abstract class FilesState with _$FilesState {
  const factory FilesState.init() = InitState;
}