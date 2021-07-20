part of 'news_bloc.dart';

@freezed
abstract class NewsEvent with _$NewsEvent {
  const factory NewsEvent.getEvents(int page, int pageSize) = GetEvents;
//const factory HomeEvent.openGithubOAuth() = OpenGithubOAuth;
}