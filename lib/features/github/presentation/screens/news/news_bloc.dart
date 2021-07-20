import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter_github_test/core/error/exceptions.dart';
import 'package:flutter_github_test/core/error/failures.dart';
import 'package:flutter_github_test/core/usecases/usecase.dart';
import 'package:flutter_github_test/features/github/domain/entities/account.dart';
import 'package:flutter_github_test/features/github/domain/entities/github.dart';
import 'package:flutter_github_test/features/github/domain/usecases/get_saved_accounts_usecase.dart';
import 'package:flutter_github_test/features/github/domain/usecases/github_usecases.dart';
import 'package:flutter_github_test/features/github/domain/usecases/open_github_oauth_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'news_event.dart';

part 'news_state.dart';

part 'news_bloc.freezed.dart';

@injectable
class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc(this._getEventsUseCase) : super(NewsState.init());

  final GetEventsUseCase _getEventsUseCase;

  @override
  Stream<NewsState> mapEventToState(NewsEvent event) async* {}

  Future<List<GithubEvent>> getEventsInPage(int page) async {
    final either = await _getEventsUseCase(GetEventsParams(true, page));
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
