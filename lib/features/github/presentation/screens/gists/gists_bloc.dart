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

part 'gists_bloc.freezed.dart';
part 'gists_event.dart';
part 'gists_state.dart';

@injectable
class GistsBloc extends Bloc<GistsEvent, GistsState> {
  GistsBloc(this._getGistsUseCase) : super(GistsState.init());

  final GetGistsUseCase _getGistsUseCase;

  @override
  Stream<GistsState> mapEventToState(GistsEvent event) async* {}

  Future<GGistsData_user_gists> getGistsInPage(GGistsReq req) async {
    final either = await _getGistsUseCase(req);
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
