import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_github_test/core/error/exceptions.dart';
import 'package:flutter_github_test/core/error/failures.dart';
import 'package:flutter_github_test/features/github/domain/entities/github.dart';
import 'package:flutter_github_test/features/github/domain/usecases/github_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github/github.dart';
import 'package:injectable/injectable.dart';

part 'orgs_repos_bloc.freezed.dart';
part 'orgs_repos_event.dart';
part 'orgs_repos_state.dart';

@injectable
class OrgsReposBloc extends Bloc<OrgsReposEvent, OrgsReposState> {
  OrgsReposBloc(this._getOrgsReposUseCase) : super(OrgsReposState.init());

  final GetOrgsReposUseCase _getOrgsReposUseCase;

  @override
  Stream<OrgsReposState> mapEventToState(OrgsReposEvent event) async* {}

  Future<List<Repository>> getOrgsRepos(
      String login, int page) async {
    final either =
    await _getOrgsReposUseCase(GetOrgsParams(login, page));
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
