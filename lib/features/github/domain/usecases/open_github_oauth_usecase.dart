import 'package:dartz/dartz.dart';
import 'package:flutter_github_test/core/usecases/usecase.dart';
import 'package:flutter_github_test/features/github/domain/entities/account.dart';
import 'package:flutter_github_test/features/github/domain/repositories/i_github_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';


@lazySingleton
class OpenGithubOAuthUseCase extends UseCase<void, NoParams> {
  OpenGithubOAuthUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, void>> call(NoParams noParams) async {
    return Right(await repository.openGithubOAuth());
  }
}