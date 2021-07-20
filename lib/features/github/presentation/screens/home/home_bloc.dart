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

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._currentAccountUseCase, this._activeTabIndex, this._setActiveTabIndex)
      : super(HomeState.init());

  final GetCurrentAccountUseCase _currentAccountUseCase;
  final GetActiveTabIndexUseCase _activeTabIndex;
  final SetActiveTabIndexUseCase _setActiveTabIndex;

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is GetCurrentAccount) {
      Fimber.d("BLoC: on event GetCurrentAccount");
      yield HomeState.onLoadCurrentAccount(
          await getCurrentAccount(), await getActiveTabIndex());
    } else if (event is SetActiveTabIndex) {
      Fimber.d("BLoC: on event SetActiveTabIndex");
      _setActiveTabIndex(event.index);
      yield HomeState.onLoadCurrentAccount(await getCurrentAccount(), await getActiveTabIndex());
    } else {
      Fimber.e("BLoC: Unknown Event");
    }
  }

  Future<Account?> getCurrentAccount() async {
    final either = await _currentAccountUseCase(NoParams());
    return either.fold(
      (l) => throw _getFailureAndThrowException(l),
      (r) => r,
    );
  }

  Future<int> getActiveTabIndex() async {
    final either = await _activeTabIndex(NoParams());
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
