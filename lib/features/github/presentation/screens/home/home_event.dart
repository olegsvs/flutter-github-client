part of 'home_bloc.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getCurrentAccount() = GetCurrentAccount;
  const factory HomeEvent.setActiveTabIndex(int index) = SetActiveTabIndex;
}