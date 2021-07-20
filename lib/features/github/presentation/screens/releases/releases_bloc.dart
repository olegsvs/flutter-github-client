import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_github_test/core/error/exceptions.dart';
import 'package:flutter_github_test/core/error/failures.dart';
import 'package:flutter_github_test/core/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/core/graph_ql/github.req.gql.dart';
import 'package:flutter_github_test/features/github/domain/usecases/github_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'releases_bloc.freezed.dart';
part 'releases_event.dart';
part 'releases_state.dart';

@injectable
class ReleasesBloc extends Bloc<ReleasesEvent, ReleasesState> {
  ReleasesBloc(this._getReleasesUseCase) : super(ReleasesState.init());

  final GetReleasesUseCase _getReleasesUseCase;

  @override
  Stream<ReleasesState> mapEventToState(ReleasesEvent event) async* {}

  Future<GReleasesData_repository_releases> getReleases(
      GReleasesReq req) async {
    final either =
    await _getReleasesUseCase(req);
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
