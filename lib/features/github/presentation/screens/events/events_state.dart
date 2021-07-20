part of 'events_bloc.dart';

@freezed
abstract class EventsState with _$EventsState {
  const factory EventsState.init() = InitState;
}