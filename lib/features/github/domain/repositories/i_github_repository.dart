import 'package:dartz/dartz.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter_github_test/core/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/core/graph_ql/github.req.gql.dart';
import 'package:flutter_github_test/features/github/domain/entities/account.dart';
import 'package:flutter_github_test/features/github/domain/entities/github.dart';
import 'package:flutter_github_test/features/github/domain/usecases/github_usecases.dart';
import 'package:github/github.dart';
import 'package:http/http.dart';

import '../../../../core/error/failures.dart';

abstract class IHomeRepository {
  Future<List<Account>> getAccounts();

  Future<Either<Failure, List<GithubEvent>>> getEvents(int page, int pageSize, bool received);

  Future<int> getCurrentAccountIndex();

  Future<int> getActiveTabIndex();

  Future<void> setActiveTab(int index);

  Future<void> setActiveAccount(int index);

  Future<Account?> getCurrentAccount();

  Future<Either<Failure, GithubEvent>> getGithubEvent();

  Future<void> openGithubOAuth();

  Future<Either<Failure, GCommitsRefCommit_history>> getCommits(GCommitsReq req);

  Future<Either<Failure, GViewerData_viewer>> getViewer(GViewerReq req);

  Future<Either<Failure, GUserData?>> getUser(GUserReq req);

  Future<Either<Failure, void>> followUser(String login);

  Future<Either<Failure, void>> unFollowUser(String login);

  Future<Either<Failure, GStarsData_user_starredRepositories>> getStars(GStarsReq req);

  Future<Either<Failure, GReposData_user_repositories>> getRepos(GReposReq req);

  Future<Either<Failure, GPullsData_repository_pullRequests>> getPulls(GPullsReq req);

  Future<Either<Failure, GRepoData_repository?>> getRepo(GRepoReq req);

  Future<Either<Failure, GReleasesData_repository_releases>> getReleases(GReleasesReq req);

  Future<Either<Failure, GithubComparisonItem>> getComparison(GetComparisonParams params);

  Future<Either<Failure, List<GithubContributorItem>>> getContributors(GetContributorsParams params);

  Future<Either<Failure, List<GithubFilesItem>>> getFiles(GetFilesParams params);

  Future<Either<Failure, GGistsData_user_gists>> getGists(GGistsReq req);

  Future<Either<Failure, GGistData_user_gist?>> getGistFiles(GGistReq req);

  Future<Either<Failure, GIssuesData_repository_issues>> getIssues(GIssuesReq req);

  Future<Either<Failure, GIssueData_repository>> queryIssue(GIssueReq req);

  Future<Either<Failure, void>> editIssue(EditIssueParams params);

  Future<Either<Failure, int>> createIssue(CreateIssueParams params);

  Future<Either<Failure, RepositoryContents>> getObject(GetObjectParams params);

  Future<Either<Failure, Response>> getReadme(GetReadmeParams params);

  Future<Either<Failure, int>> getContributorsCount(GetContributorsCountParams params);

  Future<Either<Failure, List<GithubUserOrganizationItem>>> getOrgs(GetOrgsParams params);

  Future<Either<Failure, List<Repository>>> getOrgsRepos(GetOrgsParams params);
}