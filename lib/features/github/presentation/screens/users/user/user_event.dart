part of 'user_bloc.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.getAccounts() = GetAccounts;
//const factory HomeEvent.openGithubOAuth() = OpenGithubOAuth;
}