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

part 'gists_files_bloc.freezed.dart';
part 'gists_files_event.dart';
part 'gists_files_state.dart';

@injectable
class GistsFilesBloc extends Bloc<GistsFilesEvent, GistsFilesState> {
  GistsFilesBloc(this._getGistsFilesUseCase) : super(GistsFilesState.init());

  final GetGistsFilesUseCase _getGistsFilesUseCase;

  @override
  Stream<GistsFilesState> mapEventToState(GistsFilesEvent event) async* {}

  Future<GGistData_user_gist?> getGistsFilesInPage(GGistReq req) async {
    final either = await _getGistsFilesUseCase(req);
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
