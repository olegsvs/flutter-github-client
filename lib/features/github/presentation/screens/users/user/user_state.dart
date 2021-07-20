part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState.init() = InitState;

// const factory LoginState.onAccountsLoaded(List<Account> accounts,
//     int selectedAccountIndex) = GetSavedAccounts;
}