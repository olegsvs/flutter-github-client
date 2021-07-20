part of 'commits_bloc.dart';

@freezed
abstract class CommitsEvent with _$CommitsEvent {
  const factory CommitsEvent.getEvents(int page, int pageSize) = GetEvents;
}