import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_github_test/core/error/exceptions.dart';
import 'package:flutter_github_test/core/error/failures.dart';
import 'package:flutter_github_test/core/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/features/github/domain/entities/github.dart';
import 'package:flutter_github_test/features/github/domain/usecases/github_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_github_test/core/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/core/graph_ql/github.req.gql.dart';

part 'issue_bloc.freezed.dart';

part 'issue_event.dart';

part 'issue_state.dart';

@injectable
class IssueBloc extends Bloc<IssueEvent, IssueState> {
  IssueBloc(this._issueUseCase, this._editIssueUseCase) : super(IssueState.init());

  final QueryIssueUseCase _issueUseCase;
  final EditIssueUseCase _editIssueUseCase;

  @override
  Stream<IssueState> mapEventToState(IssueEvent event) async* {}

  Future<GIssueData_repository> queryIssue(GIssueReq req) async {
    final either = await _issueUseCase(req);
    return either.fold(
      (l) => throw _getFailureAndThrowException(l),
      (r) => r,
    );
  }

  Future<void> editIssue(
      String owner, String name, int number, bool closed) async {
    final either = await _editIssueUseCase(EditIssueParams(owner, name, number, closed));
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
