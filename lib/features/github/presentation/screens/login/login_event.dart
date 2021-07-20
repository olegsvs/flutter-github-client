part of 'login_bloc.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.getAccounts() = GetAccounts;
  const factory LoginEvent.openGithubOAuth() = OpenGithubOAuth;
  const factory LoginEvent.setActiveAccountAndReload(index) = SetActiveAccountAndReload;
}