import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_github_test/core/error/exceptions.dart';
import 'package:flutter_github_test/core/error/failures.dart';
import 'package:flutter_github_test/core/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/core/graph_ql/github.req.gql.dart';
import 'package:flutter_github_test/features/github/domain/usecases/github_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

part 'repo_bloc.freezed.dart';
part 'repo_event.dart';
part 'repo_state.dart';

@injectable
class RepoBloc extends Bloc<RepoEvent, RepoState> {
  RepoBloc(this._getRepoUseCase, this._getReadmeUseCase, this._getContributorsCountUseCase) : super(RepoState.init());

  final GetRepoUseCase _getRepoUseCase;
  final GetReadmeUseCase _getReadmeUseCase;
  final GetContributorsCountUseCase _getContributorsCountUseCase;

  @override
  Stream<RepoState> mapEventToState(RepoEvent event) async* {}

  Future<GRepoData_repository?> getRepo(
      GRepoReq req) async {
    final either =
    await _getRepoUseCase(req);
    return either.fold(
          (l) => throw _getFailureAndThrowException(l),
          (r) => r,
    );
  }

  Future<int> getContributorsCount(
      String owner, String name) async {
    final either =
    await _getContributorsCountUseCase(GetContributorsCountParams(owner, name));
    return either.fold(
          (l) => throw _getFailureAndThrowException(l),
          (r) => r,
    );
  }

  Future<Response> getReadme(
      String owner, String name, String acceptHeader) async {
    final either =
    await _getReadmeUseCase(GetReadmeParams(owner, name, acceptHeader));
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
