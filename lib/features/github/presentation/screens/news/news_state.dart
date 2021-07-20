part of 'news_bloc.dart';

@freezed
abstract class NewsState with _$NewsState {
  const factory NewsState.init() = InitState;

 // const factory NewsState.onEventsLoaded(List<GithubEvent> events) = OnEventsLoaded;
}