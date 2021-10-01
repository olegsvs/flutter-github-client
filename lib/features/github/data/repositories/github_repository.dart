import 'dart:async';
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter_github_test/core/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/core/graph_ql/github.req.gql.dart';
import 'package:flutter_github_test/features/github/data/datasources/remote_data_source.dart';
import 'package:flutter_github_test/features/github/data/models/account_model.dart';
import 'package:flutter_github_test/features/github/data/models/github_model.dart';
import 'package:flutter_github_test/features/github/domain/entities/account.dart';
import 'package:flutter_github_test/features/github/domain/entities/github.dart';
import 'package:flutter_github_test/features/github/domain/repositories/i_github_repository.dart';
import 'package:flutter_github_test/features/github/domain/usecases/github_usecases.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:get_it/get_it.dart';
import 'package:github/github.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:nanoid/nanoid.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uni_links/uni_links.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/error/exceptions.dart' as excpt;
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';

const clientId = '';
const clientSecret = '';

class PlatformType {
  static const github = 'github';
}

@LazySingleton(as: IHomeRepository)
class HomeRepository implements IHomeRepository {
  HomeRepository(this._networkInfo, this._remoteDataSource);

  final NetworkInfo _networkInfo;
  final IGithubRemoteDataSource _remoteDataSource;

  List<Account> _accounts = [];
  int? activeAccountIndex;

  List<Account>? get accounts => _accounts;

  Account? get activeAccount {
    if (activeAccountIndex == null || _accounts.isEmpty) return null;
    return _accounts[activeAccountIndex!];
  }

  String get token => activeAccount!.token;

  _addAccount(Account account) async {
    _accounts = [...accounts!, account];
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(StorageKeys.accounts,
        json.encode(_accounts.map((e) => e.toJson()).toList()));
  }

  removeAccount(int index) async {
    if (activeAccountIndex == index) {
      activeAccountIndex = null;
    }
    _accounts.removeAt(index);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(StorageKeys.accounts, json.encode(_accounts));
  }

  Future<void> setDefaultAccount(int v) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(StorageKeys.iDefaultAccount, v);
    Fimber.d('write default account: $v');
  }

  @override
  Future<Either<Failure, GithubEvent>> getGithubEvent() {
    // TODO: implement getGithubEvent
    throw UnimplementedError();
  }

  @override
  Future<int> getCurrentAccountIndex() async {
    var prefs = await SharedPreferences.getInstance();

    try {
      String? str = prefs.getString(StorageKeys.accounts);
      _accounts = (json.decode(str ?? '[]') as List)
          .map((item) => AccountModel.fromJson(item).toEntity())
          .toList();
      activeAccountIndex = prefs.getInt(StorageKeys.iDefaultAccount);
    } catch (err) {
      Fimber.e('prefs getAccount failed', ex: err);
      _accounts = [];
    }
    return activeAccountIndex == null ? 0 : activeAccountIndex!;
  }

  @override
  Future<int> getActiveTabIndex() async {
    return await activeTab;
  }

  @override
  Future<Account?> getCurrentAccount() async {
    var prefs = await SharedPreferences.getInstance();
    Account? account;
    try {
      String? str = prefs.getString(StorageKeys.accounts);
      _accounts = (json.decode(str ?? '[]') as List)
          .map((item) => AccountModel.fromJson(item).toEntity())
          .toList();
      activeAccountIndex = prefs.getInt(StorageKeys.iDefaultAccount);
      _remoteDataSource.init(token);
      account = _accounts[activeAccountIndex == null ? 0 : activeAccountIndex!];
      Fimber.d("try account ${account.login}");
    } catch (err) {
      Fimber.e('prefs getAccount failed', ex: err);
      _accounts = [];
    }
    var login = account?.login != null ? account?.login : "";
    Fimber.d("return account: ${login}");
    return account;
  }

  Future<void> init() async {
    uriLinkStream.listen(_onSchemeDetected, onError: (err) {
      Fimber.e('getUriLinksStream failed', ex: err);
    });

    var prefs = await SharedPreferences.getInstance();

    try {
      String? str = prefs.getString(StorageKeys.accounts);
      _accounts = (json.decode(str ?? '[]') as List)
          .map((item) => AccountModel.fromJson(item).toEntity())
          .toList();
      activeAccountIndex = prefs.getInt(StorageKeys.iDefaultAccount);

      /*if (activeAccount != null) {
        _activeTab = prefs.getInt(
            StorageKeys.getDefaultStartTabKey(activeAccount!.platform)) ??
            0;
      }*/
    } catch (err) {
      Fimber.e('prefs getAccount failed', ex: err);
      _accounts = [];
    }
  }

  Future<void> loginWithToken(String token) async {
    var queryData = await _remoteDataSource.loginWithToken(token);
    await _addAccount(Account(
      platform: PlatformType.github,
      domain: 'https://github.com',
      token: token,
      login: queryData['viewer']['login'] as String,
      avatarUrl: queryData['viewer']['avatarUrl'] as String,
    ));
  }

  Future<void> _onSchemeDetected(Uri? uri) async {
    await closeWebView();
    String token = await _remoteDataSource.getTokenFromOAuth(
        uri, clientId, clientSecret, _oauthState);
    _remoteDataSource.init(token);
    await loginWithToken(token);
  }

  String? _oauthState;

  void redirectToGithubOauth([publicOnly = false]) {
    _oauthState = nanoid();
    final repoScope = publicOnly ? 'public_repo' : 'repo';
    final scope = Uri.encodeComponent(
        ['user', repoScope, 'read:org', 'notifications'].join(','));
    launchUrl(
      'https://github.com/login/oauth/authorize?client_id=$clientId&redirect_uri=githubtheinvadersapp://authed&scope=$scope&state=$_oauthState',
    );
  }

  int _activeTab = 0;

  int get activeTab => _activeTab;

  @override
  Future<void> setActiveTab(int v) async {
    _activeTab = v;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(
        StorageKeys.getDefaultStartTabKey(activeAccount!.platform), v);
    Fimber.d('write default start tab for ${activeAccount!.platform}: $v');
  }

  setActiveAccountAndReload(int index) async {
    activeAccountIndex = index;
    setDefaultAccount(activeAccountIndex!);
    final prefs = await SharedPreferences.getInstance();
    _activeTab = prefs.getInt(
            StorageKeys.getDefaultStartTabKey(activeAccount!.platform)) ??
        0;
  }

  @override
  Future<void> openGithubOAuth() async {
    redirectToGithubOauth();
  }

  @override
  Future<List<Account>> getAccounts() async {
    await init();
    Fimber.d("Repository: accounts: ${_accounts}");
    return await _accounts;
  }

  @override
  Future<void> setActiveAccount(int index) async {
    activeAccountIndex = index;
    setDefaultAccount(activeAccountIndex!);
    final prefs = await SharedPreferences.getInstance();
    _activeTab = prefs.getInt(
            StorageKeys.getDefaultStartTabKey(activeAccount!.platform)) ??
        0;
  }

  @override
  Future<Either<Failure, List<GithubEvent>>> getEvents(
      int page, int pageSize, bool received) async {
    try {
      final models = await _remoteDataSource.getEvents(
          page, pageSize, activeAccount!.login, received);
      final entities = models.map<GithubEvent>((e) => e.toEntity()).toList();
      return Right(entities);
    } on excpt.ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GCommitsRefCommit_history>> getCommits(
      GCommitsReq req) async {
    try {
      final response = await _remoteDataSource.getCommits(req);
      return Right(response);
    } on excpt.ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GViewerData_viewer>> getViewer(
      GViewerReq req) async {
    try {
      final response = await _remoteDataSource.getViewer(req);
      return Right(response);
    } on excpt.ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GUserData?>> getUser(
      GUserReq req) async {
    try {
      final response = await _remoteDataSource.getUser(req);
      return Right(response);
    } on excpt.ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, void>> followUser(String login) async {
    try {
      final response = await _remoteDataSource.followUser(login);
      return Right(response);
    } on excpt.ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, void>> unFollowUser(String login) async {
    try {
      final response = await _remoteDataSource.unFollowUser(login);
      return Right(response);
    } on excpt.ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GStarsData_user_starredRepositories>> getStars(
      GStarsReq req) async {
    try {
      final response = await _remoteDataSource.getStars(req);
      return Right(response);
    } on excpt.ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GReposData_user_repositories>> getRepos(
      GReposReq req) async {
    try {
      final response = await _remoteDataSource.getRepos(req);
      return Right(response);
    } on excpt.ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GPullsData_repository_pullRequests>> getPulls(
      GPullsReq req) async {
    try {
      final response = await _remoteDataSource.getPulls(req);
      return Right(response);
    } on excpt.ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GRepoData_repository?>> getRepo(GRepoReq req) async {
    try {
      final response = await _remoteDataSource.getRepo(req);
      return Right(response);
    } on excpt.ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GReleasesData_repository_releases>> getReleases(
      GReleasesReq req) async {
    try {
      final response = await _remoteDataSource.getReleases(req);
      return Right(response);
    } on excpt.ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GGistsData_user_gists>> getGists(GGistsReq req) async {
    try {
      final response = await _remoteDataSource.getGists(req);
      return Right(response);
    } on excpt.ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GGistData_user_gist?>> getGistFiles(
      GGistReq req) async {
    try {
      final response = await _remoteDataSource.getGistFiles(req);
      return Right(response);
    } on excpt.ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GIssuesData_repository_issues>> getIssues(
      GIssuesReq req) async {
    try {
      final response = await _remoteDataSource.getIssues(req);
      return Right(response);
    } on excpt.ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GIssueData_repository>> queryIssue(
      GIssueReq req) async {
    try {
      final response = await _remoteDataSource.queryIssue(req);
      return Right(response);
    } on excpt.ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, void>> editIssue(EditIssueParams params) async {
    try {
      final response = await _remoteDataSource.editIssue(params);
      return Right(response);
    } on excpt.ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, int>> createIssue(CreateIssueParams params) async {
    try {
      final response = await _remoteDataSource.createIssue(params);
      return Right(response);
    } on excpt.ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, RepositoryContents>> getObject(
      GetObjectParams params) async {
    try {
      final response = await _remoteDataSource.getObject(params);
      return Right(response);
    } on excpt.ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Response>> getReadme(GetReadmeParams params) async {
    try {
      final response = await _remoteDataSource.getReadme(params);
      return Right(response);
    } on excpt.ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, int>> getContributorsCount(
      GetContributorsCountParams params) async {
    try {
      final response = await _remoteDataSource.getContributorsCount(params);
      final count = (response as List).length;
      return Right(count);
    } on excpt.ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GithubComparisonItem>> getComparison(
      GetComparisonParams params) async {
    try {
      final response = await _remoteDataSource.getComparison(params);
      final compItem = response.toEntity();
      return Right(compItem);
    } on excpt.ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<GithubContributorItem>>> getContributors(
      GetContributorsParams params) async {
    try {
      final models = await _remoteDataSource.getContributors(params);
      final entities =
          models.map<GithubContributorItem>((e) => e.toEntity()).toList();
      return Right(entities);
    } on excpt.ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<GithubUserOrganizationItem>>> getOrgs(
      GetOrgsParams params) async {
    try {
      final models = await _remoteDataSource.getOrgs(params);
      final entities =
          models.map<GithubUserOrganizationItem>((e) => e.toEntity()).toList();
      return Right(entities);
    } on excpt.ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Repository>>> getOrgsRepos(
      GetOrgsParams params) async {
    try {
      final models = await _remoteDataSource.getOrgsRepos(params);
      return Right(models);
    } on excpt.ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<GithubFilesItem>>> getFiles(
      GetFilesParams params) async {
    try {
      final models = await _remoteDataSource.getFiles(params);
      final entities =
          models.map<GithubFilesItem>((e) => e.toEntity()).toList();
      return Right(entities);
    } on excpt.ServerException {
      return Left(ServerFailure());
    }
  }
}
