part of 'issue_form_bloc.dart';

@freezed
abstract class IssueFormState with _$IssueFormState {
  const factory IssueFormState.init() = InitState;
  const factory IssueFormState.stateChanged(String state) = StateChanged;
}