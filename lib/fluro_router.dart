import 'package:fluro/fluro.dart';
import 'package:flutter_github_test/screens/commits.dart';
import 'package:flutter_github_test/screens/compare.dart';
import 'package:flutter_github_test/screens/contributors.dart';
import 'package:flutter_github_test/screens/events.dart';
import 'package:flutter_github_test/screens/gist_object.dart';
import 'package:flutter_github_test/screens/gists.dart';
import 'package:flutter_github_test/screens/gists_files.dart';
import 'package:flutter_github_test/screens/iles.dart';
import 'package:flutter_github_test/screens/issue.dart';
import 'package:flutter_github_test/screens/issue_form.dart';
import 'package:flutter_github_test/screens/issues.dart';
import 'package:flutter_github_test/screens/login.dart';
import 'package:flutter_github_test/screens/object.dart';
import 'package:flutter_github_test/screens/org_repos.dart';
import 'package:flutter_github_test/screens/orgs.dart';
import 'package:flutter_github_test/screens/pulls.dart';
import 'package:flutter_github_test/screens/releases.dart';
import 'package:flutter_github_test/screens/repo.dart';
import 'package:flutter_github_test/screens/repos.dart';
import 'package:flutter_github_test/screens/user.dart';
import 'package:flutter_github_test/screens/users.dart';

class RouterScreen {
  String path;
  HandlerFunc handler;
  RouterScreen(this.path, this.handler);
}

class CommonRouter {
  static const prefix = '';
  static final routes = [
    CommonRouter.login];

  static final login =
  RouterScreen('/login', (context, parameters) => LoginScreen());
}

class GithubRouter {
  static const prefix = '/github';
  static final routes = [
    GithubRouter.user,
    GithubRouter.repo,
    GithubRouter.issueAdd,
    GithubRouter.issues,
    GithubRouter.pulls,
    GithubRouter.issue,
    GithubRouter.pull,
    GithubRouter.commits,
    GithubRouter.object,
    GithubRouter.stargazers,
    GithubRouter.watchers,
    GithubRouter.contributors,
    GithubRouter.files,
    GithubRouter.gistFiles,
    GithubRouter.gistObject,
    GithubRouter.compare,
    GithubRouter.releases,
  ];
  static final user = RouterScreen('/:login', (context, parameters) {
    final login = parameters['login']!.first;
    final tab = parameters['tab']?.first;
    switch (tab) {
      case 'followers':
        return GhFollowers(login);
      case 'following':
        return GhFollowing(login);
      case 'people':
        return GhMembers(login);
      case 'stars':
        return GhStars(login);
      case 'repositories':
        return GhRepos(login);
      case 'orgrepo':
        return GhOrgReposScreen(login);
      case 'organizations':
        return GhUserOrganizationScreen(login);
      case 'gists':
        return GhGistsScreen(login);
      case 'events':
        return GhEventsScreen(login);
      default:
        return GhUser(login);
    }
  });
  static final repo = RouterScreen('/:owner/:name', (context, parameters) {
    if (parameters['ref'] == null) {
      return GhRepoScreen(
          parameters['owner']!.first, parameters['name']!.first);
    } else {
      return GhRepoScreen(parameters['owner']!.first, parameters['name']!.first,
          branch: parameters['ref']!.first);
    }
  });
  static final gistObject =
  RouterScreen('/:login/gists/:id/:file', (context, parameters) {
    return GistObjectScreen(
      parameters['login']!.first,
      parameters['id']!.first,
      parameters['file']!.first,
      raw: parameters['raw']?.first,
      content: parameters['content']!.first,
    );
  });
  static final gistFiles =
  RouterScreen('/:login/gists/:id', (context, parameters) {
    return GhGistsFilesScreen(
        parameters['login']!.first, parameters['id']!.first);
  });
  static final issueAdd =
  RouterScreen('/:owner/:name/issues/new', (context, parameters) {
    return GhIssueFormScreen(
        parameters['owner']!.first, parameters['name']!.first);
  });
  static final issues = RouterScreen(
      '/:owner/:name/issues',
          (context, parameters) => GhIssuesScreen(
          parameters['owner']!.first, parameters['name']!.first));
  static final pulls = RouterScreen(
      '/:owner/:name/pulls',
          (context, parameters) =>
          GhPullsScreen(parameters['owner']!.first, parameters['name']!.first));
  static final issue = RouterScreen(
      '/:owner/:name/issues/:number',
          (context, parameters) => GhIssueScreen(parameters['owner']!.first,
          parameters['name']!.first, int.parse(parameters['number']!.first)));
  static final pull = RouterScreen(
      '/:owner/:name/pull/:number',
          (context, parameters) => GhIssueScreen(parameters['owner']!.first,
          parameters['name']!.first, int.parse(parameters['number']!.first)));
  static final files = RouterScreen(
      '/:owner/:name/pull/:number/files',
          (context, parameters) => GhFilesScreen(
        parameters['owner']!.first,
        parameters['name']!.first,
        int.parse(parameters['number']!.first),
      ));
  static final compare = RouterScreen(
      '/:owner/:name/compare/:before/:head',
          (context, parameters) => GhComparisonScreen(
          parameters['owner']!.first,
          parameters['name']!.first,
          parameters['before']!.first,
          parameters['head']!.first));
  static final commits = RouterScreen(
      '/:owner/:name/commits/:branch',
          (context, parameters) => GhCommits(
          parameters['owner']!.first, parameters['name']!.first,
          branch: parameters['branch']!.first));
  static final object =
  RouterScreen('/:owner/:name/blob/:ref', (context, parameters) {
    return GhObjectScreen(
      parameters['owner']!.first,
      parameters['name']!.first,
      parameters['ref']!.first,
      path: parameters['path']?.first,
      raw: parameters['raw']?.first,
    );
  });
  static final stargazers =
  RouterScreen('/:owner/:name/stargazers', (context, parameters) {
    return GhStargazers(parameters['owner']!.first, parameters['name']!.first);
  });
  static final watchers =
  RouterScreen('/:owner/:name/watchers', (context, parameters) {
    return GhWachers(parameters['owner']!.first, parameters['name']!.first);
  });
  static final contributors =
  RouterScreen('/:owner/:name/contributors', (context, parameters) {
    return GhContributorsScreen(
        parameters['owner']!.first, parameters['name']!.first);
  });
  static final releases =
  RouterScreen('/:owner/:name/releases', (context, parameters) {
    return GhReleasesScreen(
        parameters['owner']!.first, parameters['name']!.first);
  });
}