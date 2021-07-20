import 'package:dartz/dartz.dart';
import 'package:flutter_github_test/core/error/failures.dart';
import 'package:flutter_github_test/core/usecases/usecase.dart';
import 'package:flutter_github_test/features/github/domain/repositories/i_github_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetActiveTabIndexUseCase extends UseCase<int, NoParams> {
  GetActiveTabIndexUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, int>> call(NoParams noParams) async {
    return Right(await repository.getActiveTabIndex());
  }
}

@lazySingleton
class SetActiveTabIndexUseCase extends UseCase<void, int> {
  SetActiveTabIndexUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, void>> call(int index) async {
    return Right(await repository.setActiveTab(index));
  }
}

@lazySingleton
class SetActiveAccountIndexUseCase extends UseCase<void, int> {
  SetActiveAccountIndexUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, void>> call(int index) async {
    return Right(await repository.setActiveAccount(index));
  }
}