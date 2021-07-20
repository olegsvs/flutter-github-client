import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_github_test/core/error/exceptions.dart';
import 'package:flutter_github_test/core/error/failures.dart';
import 'package:flutter_github_test/features/github/domain/usecases/github_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github/github.dart';
import 'package:injectable/injectable.dart';

part 'object_bloc.freezed.dart';
part 'object_event.dart';
part 'object_state.dart';

@injectable
class ObjectBloc extends Bloc<ObjectEvent, ObjectState> {
  ObjectBloc(this._getObjectUseCase) : super(ObjectState.init());

  final GetObjectUseCase _getObjectUseCase;

  @override
  Stream<ObjectState> mapEventToState(ObjectEvent event) async* {}

  Future<RepositoryContents> getObject(
      String owner, String name, String suffix, String ref) async {
    final either =
        await _getObjectUseCase(GetObjectParams(owner, name, suffix, ref));
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
