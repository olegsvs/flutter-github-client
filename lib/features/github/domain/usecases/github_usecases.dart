import 'package:dartz/dartz.dart';
import 'package:flutter_github_test/core/error/failures.dart';
import 'package:flutter_github_test/core/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/core/graph_ql/github.req.gql.dart';
import 'package:flutter_github_test/core/usecases/usecase.dart';
import 'package:flutter_github_test/features/github/domain/entities/github.dart';
import 'package:flutter_github_test/features/github/domain/repositories/i_github_repository.dart';
import 'package:github/github.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetEventsUseCase extends UseCase<List<GithubEvent>, GetEventsParams> {
  GetEventsUseCase(this.repository);

  final int pageSize = 10;
  final IHomeRepository repository;

  @override
  Future<Either<Failure, List<GithubEvent>>> call(
      GetEventsParams params) async {
    return await repository.getEvents(params.page, pageSize, params.received);
  }
}

class GetEventsParams {
  GetEventsParams(this.received, this.page);

  final bool received;
  final int page;
}

@lazySingleton
class GetCommitsUseCase
    extends UseCase<GCommitsRefCommit_history, GCommitsReq> {
  GetCommitsUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, GCommitsRefCommit_history>> call(
      GCommitsReq req) async {
    return await repository.getCommits(req);
  }
}

@lazySingleton
class GViewerUseCase
    extends UseCase<GViewerData_viewer, GViewerReq> {
  GViewerUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, GViewerData_viewer>> call(
      GViewerReq req) async {
    return await repository.getViewer(req);
  }
}

@lazySingleton
class GetUserUseCase
    extends UseCase<GUserData?, GUserReq> {
  GetUserUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, GUserData?>> call(
      GUserReq req) async {
    return await repository.getUser(req);
  }
}

@lazySingleton
class FollowUserUseCase
    extends UseCase<void, String> {
  FollowUserUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, void>> call(
      String login) async {
    return await repository.followUser(login);
  }
}

@lazySingleton
class UnFollowUserUseCase
    extends UseCase<void, String> {
  UnFollowUserUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, void>> call(
      String login) async {
    return await repository.unFollowUser(login);
  }
}

@lazySingleton
class GetStarsUseCase
    extends UseCase<GStarsData_user_starredRepositories, GStarsReq> {
  GetStarsUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, GStarsData_user_starredRepositories>> call(
      GStarsReq req) async {
    return await repository.getStars(req);
  }
}

@lazySingleton
class GetReposUseCase
    extends UseCase<GReposData_user_repositories, GReposReq> {
  GetReposUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, GReposData_user_repositories>> call(
      GReposReq req) async {
    return await repository.getRepos(req);
  }
}

@lazySingleton
class GetPullsUseCase
    extends UseCase<GPullsData_repository_pullRequests, GPullsReq> {
  GetPullsUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, GPullsData_repository_pullRequests>> call(
      GPullsReq req) async {
    return await repository.getPulls(req);
  }
}

@lazySingleton
class GetRepoUseCase
    extends UseCase<GRepoData_repository?, GRepoReq> {
  GetRepoUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, GRepoData_repository?>> call(
      GRepoReq req) async {
    return await repository.getRepo(req);
  }
}

@lazySingleton
class GetReleasesUseCase
    extends UseCase<GReleasesData_repository_releases, GReleasesReq> {
  GetReleasesUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, GReleasesData_repository_releases>> call(
      GReleasesReq req) async {
    return await repository.getReleases(req);
  }
}

@lazySingleton
class GetGistsUseCase extends UseCase<GGistsData_user_gists, GGistsReq> {
  GetGistsUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, GGistsData_user_gists>> call(GGistsReq req) async {
    return await repository.getGists(req);
  }
}

@lazySingleton
class GetGistsFilesUseCase extends UseCase<GGistData_user_gist?, GGistReq> {
  GetGistsFilesUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, GGistData_user_gist?>> call(GGistReq req) async {
    return await repository.getGistFiles(req);
  }
}

@lazySingleton
class GetIssuesUseCase
    extends UseCase<GIssuesData_repository_issues, GIssuesReq> {
  GetIssuesUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, GIssuesData_repository_issues>> call(
      GIssuesReq req) async {
    return await repository.getIssues(req);
  }
}

@lazySingleton
class QueryIssueUseCase extends UseCase<GIssueData_repository, GIssueReq> {
  QueryIssueUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, GIssueData_repository>> call(GIssueReq req) async {
    return await repository.queryIssue(req);
  }
}

@lazySingleton
class GetComparisonUseCase
    extends UseCase<GithubComparisonItem, GetComparisonParams> {
  GetComparisonUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, GithubComparisonItem>> call(
      GetComparisonParams params) async {
    return await repository.getComparison(params);
  }
}

class GetComparisonParams {
  GetComparisonParams(this.owner, this.name, this.before, this.head);

  final String owner;
  final String name;
  final String before;
  final String head;
}

@lazySingleton
class EditIssueUseCase extends UseCase<void, EditIssueParams> {
  EditIssueUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, void>> call(EditIssueParams params) async {
    return await repository.editIssue(params);
  }
}

class EditIssueParams {
  EditIssueParams(this.owner, this.name, this.number, this.closed);

  final String owner;
  final String name;
  final int number;
  final bool closed;
}

@lazySingleton
class CreateIssueUseCase extends UseCase<int, CreateIssueParams> {
  CreateIssueUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, int>> call(CreateIssueParams params) async {
    return await repository.createIssue(params);
  }
}

class CreateIssueParams {
  CreateIssueParams(this.owner, this.name, this.title, this.body);

  final String owner;
  final String name;
  final title;
  final body;
}

@lazySingleton
class GetContributorsUseCase
    extends UseCase<List<GithubContributorItem>, GetContributorsParams> {
  GetContributorsUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, List<GithubContributorItem>>> call(
      GetContributorsParams params) async {
    return await repository.getContributors(params);
  }
}

class GetContributorsParams {
  GetContributorsParams(this.owner, this.name, this.page);

  final String owner;
  final String name;
  final int page;
}

@lazySingleton
class GetOrgsReposUseCase extends UseCase<List<Repository>, GetOrgsParams> {
  GetOrgsReposUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, List<Repository>>> call(GetOrgsParams params) async {
    return await repository.getOrgsRepos(params);
  }
}

@lazySingleton
class GetOrgsUseCase
    extends UseCase<List<GithubUserOrganizationItem>, GetOrgsParams> {
  GetOrgsUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, List<GithubUserOrganizationItem>>> call(
      GetOrgsParams params) async {
    return await repository.getOrgs(params);
  }
}

class GetOrgsParams {
  GetOrgsParams(this.login, this.page);

  final String login;
  final int page;
}

@lazySingleton
class GetReadmeUseCase
    extends UseCase<Response, GetReadmeParams> {
  GetReadmeUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, Response>> call(
      GetReadmeParams params) async {
    return await repository.getReadme(params);
  }
}

class GetReadmeParams {
  GetReadmeParams(this.owner, this.name, this.acceptHeader);
  final String owner;
  final String name;
  final String acceptHeader;
}

@lazySingleton
class GetContributorsCountUseCase
    extends UseCase<int, GetContributorsCountParams> {
  GetContributorsCountUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, int>> call(
      GetContributorsCountParams params) async {
    return await repository.getContributorsCount(params);
  }
}

class GetContributorsCountParams {
  GetContributorsCountParams(this.owner, this.name);
  final String owner;
  final String name;
}

@lazySingleton
class GetObjectUseCase extends UseCase<RepositoryContents, GetObjectParams> {
  GetObjectUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, RepositoryContents>> call(
      GetObjectParams params) async {
    return await repository.getObject(params);
  }
}

class GetObjectParams {
  GetObjectParams(this.owner, this.name, this.suffix, this.ref);

  final String owner;
  final String name;
  final String suffix;
  final String ref;
}

@lazySingleton
class GetFilesUseCase extends UseCase<List<GithubFilesItem>, GetFilesParams> {
  GetFilesUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, List<GithubFilesItem>>> call(
      GetFilesParams params) async {
    return await repository.getFiles(params);
  }
}

class GetFilesParams {
  GetFilesParams(this.owner, this.name, this.pullNumber, this.page);

  final String owner;
  final String name;
  final int pullNumber;
  final int page;
}
