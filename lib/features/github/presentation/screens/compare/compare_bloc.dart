import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter_github_test/core/error/exceptions.dart' as excpt;
import 'package:flutter_github_test/core/error/failures.dart';
import 'package:flutter_github_test/core/graph_ql/github.req.gql.dart';
import 'package:flutter_github_test/features/github/domain/entities/github.dart';
import 'package:flutter_github_test/features/github/domain/usecases/github_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'compare_event.dart';

part 'compare_state.dart';

part 'compare_bloc.freezed.dart';

@injectable
class CompareBloc extends Bloc<CompareEvent, CompareState> {
  CompareBloc(this._getComparisonUseCase) : super(CompareState.init());

  final GetComparisonUseCase _getComparisonUseCase;

  @override
  Stream<CompareState> mapEventToState(CompareEvent event) async* {}

  Future<GithubComparisonItem> loadComparison(String owner, String name, String before, String head) async {
    final either = await _getComparisonUseCase(GetComparisonParams(owner, name, before, head));
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