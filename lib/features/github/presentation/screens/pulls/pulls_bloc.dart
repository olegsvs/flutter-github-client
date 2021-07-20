import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_github_test/core/error/exceptions.dart';
import 'package:flutter_github_test/core/error/failures.dart';
import 'package:flutter_github_test/core/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/core/graph_ql/github.req.gql.dart';
import 'package:flutter_github_test/features/github/domain/usecases/github_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'pulls_bloc.freezed.dart';
part 'pulls_event.dart';
part 'pulls_state.dart';

@injectable
class PullsBloc extends Bloc<PullsEvent, PullsState> {
  PullsBloc(this._getPullsUseCase) : super(PullsState.init());

  final GetPullsUseCase _getPullsUseCase;

  @override
  Stream<PullsState> mapEventToState(PullsEvent event) async* {}

  Future<GPullsData_repository_pullRequests> getPulls(
      GPullsReq req) async {
    final either =
    await _getPullsUseCase(req);
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
