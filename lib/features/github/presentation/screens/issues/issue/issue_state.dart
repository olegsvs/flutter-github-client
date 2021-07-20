part of 'issue_bloc.dart';

@freezed
abstract class IssueState with _$IssueState {
  const factory IssueState.init() = InitState;
}