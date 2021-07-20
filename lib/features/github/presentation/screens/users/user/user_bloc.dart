import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry/ferry.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter_github_test/core/error/exceptions.dart' as excpt;
import 'package:flutter_github_test/core/error/failures.dart';
import 'package:flutter_github_test/core/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/core/usecases/usecase.dart';
import 'package:flutter_github_test/features/github/domain/entities/account.dart';
import 'package:flutter_github_test/features/github/domain/usecases/get_saved_accounts_usecase.dart';
import 'package:flutter_github_test/features/github/domain/usecases/github_usecases.dart';
import 'package:flutter_github_test/features/github/domain/usecases/open_github_oauth_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_github_test/core/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/core/graph_ql/github.req.gql.dart';
import 'package:flutter_github_test/core/graph_ql/github.var.gql.dart';

part 'user_bloc.freezed.dart';

part 'user_event.dart';

part 'user_state.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(this._gViewerUseCase, this._getUserUseCase, this._followUserUseCase, this._unFollowUserUseCase)
      : super(UserState.init());

  GViewerUseCase _gViewerUseCase;
  GetUserUseCase _getUserUseCase;
  FollowUserUseCase _followUserUseCase;
  UnFollowUserUseCase _unFollowUserUseCase;

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {}

  Future<GViewerData_viewer> getViewer(GViewerReq req) async {
    final either = await _gViewerUseCase(req);
    return either.fold(
      (l) => throw _getFailureAndThrowException(l),
      (r) => r,
    );
  }

  Future<GUserData?> getUser(GUserReq req) async {
    final either = await _getUserUseCase(req);
    return either.fold(
      (l) => throw _getFailureAndThrowException(l),
      (r) => r,
    );
  }

  Future<void> unfollowUser(String login) async {
    final either = await _unFollowUserUseCase(login);
    return either.fold(
      (l) => throw _getFailureAndThrowException(l),
      (r) => r,
    );
  }

  Future<void> followUser(String login) async {
    final either = await _followUserUseCase(login);
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
