import 'dart:convert';

import 'package:ferry/ferry.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter_github_test/core/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/core/graph_ql/github.req.gql.dart';
import 'package:flutter_github_test/core/graph_ql/gql_query.dart';
import 'package:flutter_github_test/features/github/data/models/github_model.dart';
import 'package:flutter_github_test/features/github/domain/usecases/github_usecases.dart';
import 'package:github/github.dart';
import 'package:github/github.dart' as github;
import 'package:gql_http_link/gql_http_link.dart';
import 'package:http/http.dart' as http_dart;
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:universal_io/io.dart';

abstract class IGithubRemoteDataSource {
  Future<String> getTokenFromOAuth(
      Uri? uri, String clientId, String clientSecret, String? oauthState);

  Future<dynamic> loginWithToken(String token);

  Future<List<GithubEventModel>> getEvents(
      int page, int pageSize, String login, bool received);

  Future<GCommitsRefCommit_history> getCommits(GCommitsReq req);

  Future<GStarsData_user_starredRepositories> getStars(GStarsReq req);

  Future<GReposData_user_repositories> getRepos(GReposReq req);

  Future<GPullsData_repository_pullRequests> getPulls(GPullsReq req);

  Future<GRepoData_repository?> getRepo(GRepoReq req);

  Future<GReleasesData_repository_releases> getReleases(GReleasesReq req);

  Future<GithubComparisonItemModel> getComparison(GetComparisonParams params);

  Future<List<GithubContributorItemModel>> getContributors(
      GetContributorsParams params);

  Future<List<GithubFilesItemModel>> getFiles(GetFilesParams params);

  Future<List<GithubUserOrganizationItemModel>> getOrgs(GetOrgsParams params);

  Future<List<Repository>> getOrgsRepos(GetOrgsParams params);

  Future<GGistsData_user_gists> getGists(GGistsReq req);

  Future<GGistData_user_gist?> getGistFiles(GGistReq req);

  Future<GIssuesData_repository_issues> getIssues(GIssuesReq req);

  Future<GIssueData_repository> queryIssue(GIssueReq req);

  Future<void> editIssue(EditIssueParams params);

  Future<int> createIssue(CreateIssueParams params);

  Future<RepositoryContents> getObject(GetObjectParams params);

  Future<http_dart.Response> getReadme(GetReadmeParams params);

  Future<http_dart.Response> getContributorsCount(
      GetContributorsCountParams params);

  Future<GUserData?> getUser(GUserReq req);

  Future<GViewerData_viewer> getViewer(GViewerReq req);

  Future<void> followUser(String login);

  Future<void> unFollowUser(String login);
}

final _apiPrefix = 'https://api.github.com';

@LazySingleton(as: IGithubRemoteDataSource)
class GithubRemoteDataSource implements IGithubRemoteDataSource {
  String? token;

  GithubRemoteDataSource(this._ghClient, this._gqlClient);

  final Client _gqlClient;
  final GitHub _ghClient;

  @override
  Future<List<GithubEventModel>> getEvents(
      int page, int pageSize, String login, bool received) async {
    try {
      var model;
      if (received) {
        model = await _ghClient.getJSON(
          '/users/$login/received_events?page=$page&per_page=$pageSize',
          convert: (dynamic vs) =>
              [for (var v in vs) GithubEventModel.fromJson(v)],
        );
      } else {
        model = await _ghClient.getJSON(
          '/users/$login/received_events?page=$page&per_page=$pageSize',
          convert: (dynamic vs) =>
              [for (var v in vs) GithubEventModel.fromJson(v)],
        );
      }
      return model;
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }

  @override
  Future<List<GithubFilesItemModel>> getFiles(GetFilesParams params) async {
    try {
      return await _ghClient.getJSON(
        '/repos/${params.owner}/${params.name}/pulls/${params.pullNumber}/files?page=${params.page}',
        convert: (dynamic vs) =>
            [for (var v in vs) GithubFilesItemModel.fromJson(v)],
      );
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }

  @override
  Future<List<GithubUserOrganizationItemModel>> getOrgs(
      GetOrgsParams params) async {
    try {
      return await _ghClient.getJSON(
        '/users/${params.login}/orgs?page=${params.page}',
        convert: (dynamic vs) =>
            [for (var v in vs) GithubUserOrganizationItemModel.fromJson(v)],
      );
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }

  @override
  Future<List<Repository>> getOrgsRepos(GetOrgsParams params) async {
    try {
      return await _ghClient.getJSON<List, List<Repository>>(
        '/orgs/${params.login}/repos?sort=updated&page=${params.page}',
        convert: (vs) => [for (var v in vs) Repository.fromJson(v)],
      );
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }

  @override
  Future<void> editIssue(EditIssueParams params) async {
    try {
      await _ghClient.issues.edit(
          github.RepositorySlug(params.owner, params.name),
          params.number,
          github.IssueRequest(state: params.closed ? 'open' : 'closed'));
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }

  @override
  Future<int> createIssue(CreateIssueParams params) async {
    try {
      final slug = RepositorySlug(params.owner, params.name);
      var issue = await _ghClient.issues
          .create(slug, IssueRequest(title: params.title, body: params.body));
      return issue.number;
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }

  @override
  Future<RepositoryContents> getObject(GetObjectParams params) async {
    try {
      return await _ghClient.repositories.getContents(
          RepositorySlug(params.owner, params.name), params.suffix,
          ref: params.ref);
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }

  @override
  Future<http_dart.Response> getReadme(GetReadmeParams params) async {
    try {
      return await _ghClient.request(
          'GET', '/repos/${params.owner}/${params.name}/readme',
          headers: {HttpHeaders.acceptHeader: params.acceptHeader});
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }

  @override
  Future<GUserData?> getUser(GUserReq req) async {
    try {
      var res = await _gqlClient.request(req).first;
      return res.data;
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }

  @override
  Future<GViewerData_viewer> getViewer(GViewerReq req) async {
    try {
      var res = await _gqlClient.request(req).first;
      return res.data!.viewer;
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }

  @override
  Future<void> followUser(String login) async {
    try {
      await _ghClient.users.followUser(login);
      return;
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }

  @override
  Future<void> unFollowUser(String login) async {
    try {
      await _ghClient.users.unfollowUser(login);
      return;
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }

  @override
  Future<http_dart.Response> getContributorsCount(
      GetContributorsCountParams params) async {
    try {
      return await _ghClient
          .getJSON('/repos/${params.owner}/${params.name}/stats/contributors');
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }

  @override
  Future<GithubComparisonItemModel> getComparison(
      GetComparisonParams params) async {
    try {
      return await _ghClient.getJSON(
        '/repos/${params.owner}/${params.name}/compare/${params.before}...${params.head}',
        convert: (dynamic vs) => GithubComparisonItemModel.fromJson(vs),
      );
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }

  var _timeoutDuration = Duration(seconds: 10);

  Future<dynamic> query(String query, [String? _token]) async {
    if (_token == null) {
      _token = token;
    }
    if (_token == null) {
      throw 'token is null';
    }


    final res = await http
        .post(Uri.parse(_apiPrefix + '/graphql'),
            headers: {
              HttpHeaders.authorizationHeader: 'token $_token',
              HttpHeaders.contentTypeHeader: 'application/json'
            },
            body: json.encode({'query': query}))
        .timeout(_timeoutDuration);

    final data = json.decode(res.body);

    if (data['errors'] != null) {
      throw data['errors'][0]['message'];
    }
    return data['data'];
  }

  @override
  Future<String> getTokenFromOAuth(Uri? uri, String clientId,
      String clientSecret, String? oauthState) async {
    final res = await http.post(
      Uri.parse('https://github.com/login/oauth/access_token'),
      headers: {
        HttpHeaders.acceptHeader: 'application/json',
        HttpHeaders.contentTypeHeader: 'application/json',
      },
      body: json.encode({
        'client_id': clientId,
        'client_secret': clientSecret,
        'code': uri!.queryParameters['code'],
        'state': oauthState,
      }),
    );

    Fimber.d(res.body);

    final token = json.decode(res.body)['access_token'] as String;
    return token;
  }

  @override
  Future<dynamic> loginWithToken(String token) async {
    try {
      Fimber.d("loginWithToken: ${token}");
      final queryData = await query(GqlQuery.loginWithTokenQuery, token);
      _ghClient.auth = Authentication.withToken(token);
      _gqlClient.link.concat(
        HttpLink(
          _apiPrefix + '/graphql',
          defaultHeaders: {HttpHeaders.authorizationHeader: 'token $token'},
        ),
      );
      return queryData;
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }

  @override
  Future<GCommitsRefCommit_history> getCommits(GCommitsReq req) async {
    try {
      var res = await _gqlClient.request(req).first;
      final ref =
          res.data!.repository!.defaultBranchRef ?? res.data!.repository!.ref!;
      return (ref.target as GCommitsRefCommit).history;
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }

  @override
  Future<GStarsData_user_starredRepositories> getStars(GStarsReq req) async {
    try {
      var res = await _gqlClient.request(req).first;
      final ref = res.data!.user!.starredRepositories;
      return ref;
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }

  @override
  Future<GReposData_user_repositories> getRepos(GReposReq req) async {
    try {
      var res = await _gqlClient.request(req).first;
      final ref = res.data!.user!.repositories;
      return ref;
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }

  @override
  Future<GPullsData_repository_pullRequests> getPulls(GPullsReq req) async {
    try {
      var res = await _gqlClient.request(req).first;
      final ref = res.data!.repository!.pullRequests;
      return ref;
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }

  @override
  Future<GRepoData_repository?> getRepo(GRepoReq req) async {
    try {
      var res = await _gqlClient.request(req).first;
      final ref = res.data!.repository;
      return ref;
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }

  @override
  Future<GReleasesData_repository_releases> getReleases(
      GReleasesReq req) async {
    try {
      var res = await _gqlClient.request(req).first;
      final ref = res.data!.repository!.releases;
      return ref;
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }

  @override
  Future<GGistsData_user_gists> getGists(GGistsReq req) async {
    try {
      var res = await _gqlClient.request(req).first;
      return res.data!.user!.gists;
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }

  @override
  Future<GGistData_user_gist?> getGistFiles(GGistReq req) async {
    try {
      var res = await _gqlClient.request(req).first;
      return res.data!.user!.gist;
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }

  @override
  Future<GIssuesData_repository_issues> getIssues(GIssuesReq req) async {
    try {
      var res = await _gqlClient.request(req).first;
      return res.data!.repository!.issues;
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }

  @override
  Future<GIssueData_repository> queryIssue(GIssueReq req) async {
    try {
      var res = await _gqlClient.request(req).first;
      return res.data!.repository!;
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }

  @override
  Future<List<GithubContributorItemModel>> getContributors(
      GetContributorsParams params) async {
    try {
      return await _ghClient.getJSON(
        '/repos/${params.owner}/${params.name}/contributors?page=${params.page}',
        convert: (dynamic vs) =>
            [for (var v in vs) GithubContributorItemModel.fromJson(v)],
      );
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }
}
