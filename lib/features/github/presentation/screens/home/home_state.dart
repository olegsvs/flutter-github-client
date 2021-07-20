part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.init() = InitState;
  const factory HomeState.activeTabIndexChanged() = onActiveTabIndexChanged;

  const factory HomeState.onLoadCurrentAccount(Account? account, int activeTabIndex) = OnLoadCurrentAccount;
}