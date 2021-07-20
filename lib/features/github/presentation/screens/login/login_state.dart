part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.init() = InitState;
  const factory LoginState.onActiveAccountChanged() = OnActiveAccountChanged;

  const factory LoginState.onAccountsLoaded(List<Account> accounts,
      int selectedAccountIndex) = GetSavedAccounts;
}