import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_github_test/core/error/exceptions.dart';
import 'package:flutter_github_test/core/error/failures.dart';
import 'package:flutter_github_test/core/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/core/graph_ql/github.req.gql.dart';
import 'package:flutter_github_test/features/github/domain/usecases/github_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'repos_bloc.freezed.dart';
part 'repos_event.dart';
part 'repos_state.dart';

@injectable
class ReposBloc extends Bloc<ReposEvent, ReposState> {
  ReposBloc(this._getReposUseCase, this._getStarsUseCase) : super(ReposState.init());

  final GetReposUseCase _getReposUseCase;
  final GetStarsUseCase _getStarsUseCase;

  @override
  Stream<ReposState> mapEventToState(ReposEvent event) async* {}

  Future<GReposData_user_repositories> getRepos(
      GReposReq req) async {
    final either =
    await _getReposUseCase(req);
    return either.fold(
          (l) => throw _getFailureAndThrowException(l),
          (r) => r,
    );
  }

  Future<GStarsData_user_starredRepositories> getStars(
      GStarsReq req) async {
    final either =
    await _getStarsUseCase(req);
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
