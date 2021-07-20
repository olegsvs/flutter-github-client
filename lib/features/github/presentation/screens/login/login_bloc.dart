import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter_github_test/core/error/exceptions.dart';
import 'package:flutter_github_test/core/error/failures.dart';
import 'package:flutter_github_test/core/usecases/usecase.dart';
import 'package:flutter_github_test/features/github/domain/entities/account.dart';
import 'package:flutter_github_test/features/github/domain/usecases/get_saved_accounts_usecase.dart';
import 'package:flutter_github_test/features/github/domain/usecases/open_github_oauth_usecase.dart';
import 'package:flutter_github_test/features/github/domain/usecases/prefs_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_event.dart';

part 'login_state.dart';

part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._accountsUseCase, this._openGithubOAuthUseCase,
      this._currentAccountIndexUseCase, this._setActiveAccountIndex)
      : super(LoginState.init());

  final GetAccountsUseCase _accountsUseCase;
  final GetCurrentAccountIndexUseCase _currentAccountIndexUseCase;
  final OpenGithubOAuthUseCase _openGithubOAuthUseCase;
  final SetActiveAccountIndexUseCase _setActiveAccountIndex;

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is GetAccounts) {
      Fimber.d("BLoC: on event GetAccounts");
      yield LoginState.onAccountsLoaded(
          await getAccounts(), await getCurrentAccountIndex());
    } else if (event is OpenGithubOAuth) {
      Fimber.d("BLoC: on event OpenGithubOAuth");
      await _openGithubOAuthUseCase(NoParams());
      yield LoginState.onAccountsLoaded(
          await getAccounts(), await getCurrentAccountIndex());
    } else if (event is SetActiveAccountAndReload) {
      await _setActiveAccountIndex(event.index);
      yield LoginState.onActiveAccountChanged();
    } else {
      Fimber.e("BLoC: Unknown Event");
    }
  }

  Future<List<Account>> getAccounts() async {
    final either = await _accountsUseCase(NoParams());
    return either.fold(
      (l) => throw _getFailureAndThrowException(l),
      (r) => r,
    );
  }

  Future<int> getCurrentAccountIndex() async {
    final either = await _currentAccountIndexUseCase(NoParams());
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
