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

part 'issue_form_bloc.freezed.dart';

part 'issue_form_event.dart';

part 'issue_form_state.dart';

@injectable
class IssueFormBloc extends Bloc<IssueFormEvent, IssueFormState> {
  IssueFormBloc(this._createIssueUseCase) : super(IssueFormState.init());

  final CreateIssueUseCase _createIssueUseCase;

  @override
  Stream<IssueFormState> mapEventToState(IssueFormEvent event) async* {}

  Future<int> createIssue(
      String owner, String name, var title, var body) async {
    final either = await _createIssueUseCase(CreateIssueParams(owner, name, title, body));
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
