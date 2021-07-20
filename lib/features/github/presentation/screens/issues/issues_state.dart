part of 'issues_bloc.dart';

@freezed
abstract class IssuesState with _$IssuesState {
  const factory IssuesState.init() = InitState;
}