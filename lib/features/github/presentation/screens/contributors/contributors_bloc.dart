import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter_github_test/core/error/exceptions.dart' as excpt;
import 'package:flutter_github_test/core/error/failures.dart';
import 'package:flutter_github_test/core/error/exceptions.dart';
import 'package:flutter_github_test/core/error/failures.dart';
import 'package:flutter_github_test/features/github/domain/entities/github.dart';
import 'package:flutter_github_test/features/github/domain/usecases/github_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'contributors_event.dart';

part 'contributors_state.dart';

part 'contributors_bloc.freezed.dart';

@injectable
class ContributorsBloc extends Bloc<ContributorsEvent, ContributorsState> {
  ContributorsBloc(this._getContributorsUseCase) : super(ContributorsState.init());

  final GetContributorsUseCase _getContributorsUseCase;

  @override
  Stream<ContributorsState> mapEventToState(ContributorsEvent event) async* {}

  Future<List<GithubContributorItem>> getContributors(String owner, String name, int page) async {
    final either = await _getContributorsUseCase(GetContributorsParams(owner, name, page));
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