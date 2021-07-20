import 'package:ferry/ferry.dart' as ferry;
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github_test/core/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/core/graph_ql/github.req.gql.dart';
import 'package:flutter_github_test/core/graph_ql/github.var.gql.dart';
import 'package:flutter_github_test/core/injection/injection.dart';
import 'package:flutter_github_test/features/github/data/repositories/github_repository.dart';
import 'package:flutter_github_test/features/github/presentation/screens/users/user/user_bloc.dart';
import 'package:flutter_github_test/features/internal/theme.dart';
import 'package:flutter_github_test/features/github/presentation/scaffolds/refresh_stateful.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/action_button.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/app_bar_title.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/contribution.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/entry_item.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/mutation_button.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/repository_item.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/table_view.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/text_with_at.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/user_header.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:flutter_gen/gen_l10n/S.dart';
import 'package:get_it/get_it.dart';
import 'package:github/github.dart';

class _Repos extends StatelessWidget {
  final String title;
  final Iterable<GRepoItem>? repos;

  _Repos(final Iterable<GRepoItem> pinned, final Iterable<GRepoItem>? repos)
      : title =
            pinned.isNotEmpty ? 'pinned repositories' : 'popular repositories',
        repos = pinned.isNotEmpty ? pinned : repos;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TableViewHeader(title),
        ...join(
          CommonStyle.border,
          repos!.map((v) {
            return RepositoryItem.gh(
              owner: v.owner.login,
              avatarUrl: v.owner.avatarUrl,
              name: v.name,
              description: v.description,
              starCount: v.stargazers.totalCount,
              forkCount: v.forks.totalCount,
              primaryLanguageName: v.primaryLanguage?.name,
              primaryLanguageColor: v.primaryLanguage?.color,
              isPrivate: v.isPrivate,
              isFork: v.isFork,
            );
          }).toList(),
        ),
      ],
    );
  }
}

class _User extends StatelessWidget {
  final GUserParts? p;
  final bool isViewer;
  final List<Widget> rightWidgets;

  AppModel get theme => GetIt.instance.get<AppModel>();

  const _User(this.p, {this.isViewer = false, this.rightWidgets = const []});

  @override
  Widget build(BuildContext context) {
    final login = p!.login;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        UserHeader(
          avatarUrl: p!.avatarUrl,
          name: p!.name,
          login: p!.login,
          createdAt: p!.createdAt,
          bio: p!.bio,
          isViewer: isViewer,
          rightWidgets: rightWidgets,
        ),
        CommonStyle.border,
        Row(children: [
          EntryItem(
            count: p!.repositories.totalCount,
            text: AppLocalizations.of(context)!.repositories,
            url: '/github/$login?tab=repositories',
          ),
          EntryItem(
            count: p!.starredRepositories.totalCount,
            text: AppLocalizations.of(context)!.stars,
            url: '/github/$login?tab=stars',
          ),
          EntryItem(
            count: p!.followers.totalCount,
            text: AppLocalizations.of(context)!.followers,
            url: '/github/$login?tab=followers',
          ),
          EntryItem(
            count: p!.following.totalCount,
            text: AppLocalizations.of(context)!.following,
            url: '/github/$login?tab=following',
          ),
        ]),
        CommonStyle.border,
        ContributionWidget(
          weeks: [
            for (final week
                in p!.contributionsCollection.contributionCalendar.weeks)
              [
                for (final day in week.contributionDays)
                  ContributionDay(hexColor: day.color)
              ]
          ],
        ),
        CommonStyle.border,
        TableView(
          hasIcon: true,
          items: [
            TableViewItem(
              leftIconData: Octicons.rss,
              text: Text(AppLocalizations.of(context)!.events),
              url: '/github/$login?tab=events',
            ),
            TableViewItem(
              leftIconData: Octicons.book,
              text: Text(AppLocalizations.of(context)!.gists),
              url: '/github/$login?tab=gists',
            ),
            TableViewItem(
              leftIconData: Octicons.home,
              text: Text(AppLocalizations.of(context)!.organizations),
              url: '/github/$login?tab=organizations',
            ),
            if (isNotNullOrEmpty(p!.company))
              TableViewItem(
                leftIconData: Octicons.organization,
                text: TextWithAt(
                  text: p!.company!,
                  linkFactory: (text) => '/github/' + text.substring(1),
                  style: TextStyle(fontSize: 17, color: theme.palette.text),
                  oneLine: true,
                ),
              ),
            if (isNotNullOrEmpty(p!.location))
              TableViewItem(
                leftIconData: Octicons.location,
                text: Text(p!.location!),
                onTap: () {
                  launchUrl('https://www.google.com/maps/place/' +
                      p!.location!.replaceAll(RegExp(r'\s+'), ''));
                },
              ),
            if (isNotNullOrEmpty(p!.email))
              TableViewItem(
                leftIconData: Octicons.mail,
                text: Text(p!.email),
                onTap: () {
                  launchUrl('mailto:' + p!.email);
                },
              ),
            if (isNotNullOrEmpty(p!.websiteUrl))
              TableViewItem(
                leftIconData: Octicons.link,
                text: Text(p!.websiteUrl!),
                onTap: () {
                  var url = p!.websiteUrl!;
                  if (!url.startsWith('http')) {
                    url = 'http://$url';
                  }
                  launchUrl(url);
                },
              ),
          ],
        ),
        CommonStyle.verticalGap,
        _Repos(
          p!.pinnedItems.nodes!.whereType<GRepoItem>(),
          p!.repositories.nodes,
        ),
        CommonStyle.verticalGap,
      ],
    );
  }
}

class _Org extends StatelessWidget {
  final GUserData_repositoryOwner__asOrganization? p;

  _Org(this.p);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        UserHeader(
          avatarUrl: p!.avatarUrl,
          name: p!.name,
          login: p!.login,
          createdAt: p!.createdAt,
          bio: p!.description,
        ),
        CommonStyle.border,
        Row(children: [
          EntryItem(
            count: p!.pinnableItems.totalCount,
            text: AppLocalizations.of(context)!.repositories,
            url: '/github/${p!.login}?tab=orgrepo',
          ),
          EntryItem(
            count: p!.membersWithRole.totalCount,
            text: AppLocalizations.of(context)!.members,
            url: '/github/${p!.login}?tab=people',
          ),
        ]),
        TableView(
          hasIcon: true,
          items: [
            TableViewItem(
              leftIconData: Octicons.rss,
              text: Text(AppLocalizations.of(context)!.events),
              url: '/github/${p!.login}?tab=events',
            ),
            if (isNotNullOrEmpty(p!.location))
              TableViewItem(
                leftIconData: Octicons.location,
                text: Text(p!.location!),
                onTap: () {
                  launchUrl('https://www.google.com/maps/place/' +
                      p!.location!.replaceAll(RegExp(r'\s+'), ''));
                },
              ),
            if (isNotNullOrEmpty(p!.email))
              TableViewItem(
                leftIconData: Octicons.mail,
                text: Text(p!.email!),
                onTap: () {
                  launchUrl('mailto:' + p!.email!);
                },
              ),
            if (isNotNullOrEmpty(p!.websiteUrl))
              TableViewItem(
                leftIconData: Octicons.link,
                text: Text(p!.websiteUrl!),
                onTap: () {
                  var url = p!.websiteUrl!;
                  if (!url.startsWith('http')) {
                    url = 'http://$url';
                  }
                  launchUrl(url);
                },
              ),
          ],
        ),
        CommonStyle.verticalGap,
        _Repos(
          p!.pinnedItems.nodes!.whereType<GRepoItem>(),
          p!.pinnableItems.nodes!.whereType<GRepoItem>(),
        ),
        CommonStyle.verticalGap,
      ],
    );
  }
}

class GhViewer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserBloc>(
        create: (_) => getIt(),
        child: BlocBuilder<UserBloc, UserState>(builder: (context, state) {
          return RefreshStatefulScaffold<GUserParts?>(
            fetch: () async {
              final req = GViewerReq();
              Fimber.d("getViewer");
              return await context.read<UserBloc>().getViewer(req);
            },
            title: AppBarTitle(AppLocalizations.of(context)!.me),
            bodyBuilder: (p, _) {
              return _User(p, isViewer: true);
            },
          );
        }));
  }
}

class GhUser extends StatelessWidget {
  final String login;

  GhUser(this.login);

  @override
  Widget build(BuildContext context) {
    return RefreshStatefulScaffold<GUserData?>(
      fetch: () async {
        Fimber.d("getuser");
        final req = GUserReq((b) => b..vars.login = login);
        return await context.read<UserBloc>().getUser(req);
      },
      title: AppBarTitle(login),
      actionBuilder: (payload, _) {
        return ActionButton(
          title: 'User Actions',
          items: ActionItem.getUrlActions(payload!.repositoryOwner?.url),
        );
      },
      bodyBuilder: (data, setData) {
        if (data!.repositoryOwner == null) {
          return Container();
        }
        if (data!.repositoryOwner!.G__typename == 'User') {
          final p = data.repositoryOwner as GUserData_repositoryOwner__asUser;
          return _User(
            p,
            rightWidgets: [
              if (p.viewerCanFollow)
                MutationButton(
                  active: p.viewerIsFollowing,
                  text: p.viewerIsFollowing
                      ? AppLocalizations.of(context)!.unfollow
                      : AppLocalizations.of(context)!.follow,
                  onTap: () async {
                    if (p.viewerIsFollowing) {
                      await context.read<UserBloc>().unfollowUser(p.login);
                    } else {
                      await context.read<UserBloc>().followUser(p.login);
                    }
                    setData(data.rebuild((b) {
                      final u = b.repositoryOwner
                          as GUserData_repositoryOwner__asUser;
                      b.repositoryOwner = u.rebuild((b1) {
                        b1.viewerIsFollowing = !b1.viewerIsFollowing!;
                      });
                    }));
                  },
                )
            ],
          );
        } else {
          return _Org(data.repositoryOwner
              as GUserData_repositoryOwner__asOrganization?);
        }
      },
    );
  }
}
