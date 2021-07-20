import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter_github_test/core/error/exceptions.dart' as excpt;
import 'package:flutter_github_test/core/error/failures.dart';
import 'package:flutter_github_test/core/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/core/graph_ql/github.req.gql.dart';
import 'package:flutter_github_test/features/github/domain/usecases/github_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'commits_bloc.freezed.dart';
part 'commits_event.dart';
part 'commits_state.dart';

@injectable
class CommitsBloc extends Bloc<CommitsEvent, CommitsState> {
  CommitsBloc(this._getCommitsUseCase) : super(CommitsState.init());

  final GetCommitsUseCase _getCommitsUseCase;

  @override
  Stream<CommitsState> mapEventToState(CommitsEvent event) async* {}

  Future<GCommitsRefCommit_history> getCommits(GCommitsReq req) async {
    final either = await _getCommitsUseCase(req);
    return either.fold(
          (l) => throw _getFailureAndThrowException(l),
          (r) => r,
    );
  }

  Exception _getFailureAndThrowException(Failure l) {
    if (l is ServerFailure) {
      return excpt.ServerException();
    } else {
      return excpt.UnknownException();
    }
  }
}