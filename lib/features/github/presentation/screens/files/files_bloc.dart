import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_github_test/core/error/exceptions.dart';
import 'package:flutter_github_test/core/error/failures.dart';
import 'package:flutter_github_test/features/github/domain/entities/github.dart';
import 'package:flutter_github_test/features/github/domain/usecases/github_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'files_bloc.freezed.dart';
part 'files_event.dart';
part 'files_state.dart';

@injectable
class FilesBloc extends Bloc<FilesEvent, FilesState> {
  FilesBloc(this._getFilesUseCase) : super(FilesState.init());

  final GetFilesUseCase _getFilesUseCase;

  @override
  Stream<FilesState> mapEventToState(FilesEvent event) async* {}

  Future<List<GithubFilesItem>> getFilesInPage(String owner, String name, int pullNumber, int page) async {
    final either = await _getFilesUseCase(GetFilesParams(owner, name, pullNumber, page));
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
