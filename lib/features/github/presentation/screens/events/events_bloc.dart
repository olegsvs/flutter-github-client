import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_github_test/core/error/exceptions.dart';
import 'package:flutter_github_test/core/error/failures.dart';
import 'package:flutter_github_test/features/github/domain/entities/github.dart';
import 'package:flutter_github_test/features/github/domain/usecases/github_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'events_bloc.freezed.dart';
part 'events_event.dart';
part 'events_state.dart';

@injectable
class EventsBloc extends Bloc<EventsEvent, EventsState> {
  EventsBloc(this._getEventsUseCase) : super(EventsState.init());

  final GetEventsUseCase _getEventsUseCase;

  @override
  Stream<EventsState> mapEventToState(EventsEvent event) async* {}

  Future<List<GithubEvent>> getEventsInPage(int page) async {
    final either = await _getEventsUseCase(GetEventsParams(false, page));
    return either.fold(
      (l) => throw _getFailureAndThrowException(l),
      (r) => r,
    );
  }

  Exception _getFailureAndThrowException(Failure l) {
    if (l is ServerFailure) {
      return ServerException();
    } else {
      return UnknownException();
    }
  }
}
