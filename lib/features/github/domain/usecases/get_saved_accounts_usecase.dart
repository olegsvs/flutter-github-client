import 'package:dartz/dartz.dart';
import 'package:flutter_github_test/core/usecases/usecase.dart';
import 'package:flutter_github_test/features/github/domain/entities/account.dart';
import 'package:flutter_github_test/features/github/domain/repositories/i_github_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';


@lazySingleton
class GetAccountsUseCase extends UseCase<List<Account>, NoParams> {
  GetAccountsUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, List<Account>>> call(NoParams noParams) async {
    return Right(await repository.getAccounts());
  }
}

@lazySingleton
class GetCurrentAccountIndexUseCase extends UseCase<int, NoParams> {
  GetCurrentAccountIndexUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, int>> call(NoParams noParams) async {
    return Right(await repository.getCurrentAccountIndex());
  }
}

@lazySingleton
class GetCurrentAccountUseCase extends UseCase<Account?, NoParams> {
  GetCurrentAccountUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, Account?>> call(NoParams noParams) async {
    return Right(await repository.getCurrentAccount());
  }
}