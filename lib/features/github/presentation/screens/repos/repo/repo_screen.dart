import 'package:ferry/ferry.dart';
import 'package:filesize/filesize.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github_test/core/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/core/graph_ql/github.req.gql.dart';
import 'package:flutter_github_test/core/graph_ql/github.var.gql.dart';
import 'package:flutter_github_test/core/graph_ql/schema.schema.gql.dart';
import 'package:flutter_github_test/features/github/presentation/screens/repos/repo/repo_bloc.dart';
import 'package:flutter_github_test/features/internal/theme.dart';
import 'package:flutter_github_test/features/github/presentation/scaffolds/refresh_stateful.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/action_button.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/app_bar_title.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/entry_item.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/label.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/language_bar.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/markdown_view.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/mutation_button.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/repo_header.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/table_view.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:get_it/get_it.dart';
import 'package:github/github.dart';
import 'package:tuple/tuple.dart';
import 'package:universal_io/io.dart';
import 'package:flutter_gen/gen_l10n/S.dart';

class GhRepoScreen extends StatelessWidget {
  final String owner;
  final String name;
  final String? branch;
  GhRepoScreen(this.owner, this.name, {this.branch});

  String _buildWatchState(GSubscriptionState? state) {
    switch (state) {
      case GSubscriptionState.IGNORED:
        return 'Ignoring';
      case GSubscriptionState.SUBSCRIBED:
        return 'Watching';
      case GSubscriptionState.UNSUBSCRIBED:
        return 'Not watching';
      default:
        return 'Unknown';
    }
  }
  AppModel get theme => GetIt.instance.get<AppModel>();
  GitHub get client => GetIt.instance.get<GitHub>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RepoBloc, RepoState>(builder: (context, state) {
    return RefreshStatefulScaffold<
        Tuple3<GRepoData_repository?, Future<int>, MarkdownViewData>>(
      title: AppBarTitle(AppLocalizations.of(context)!.repository),
      fetch: () async {
        final req = GRepoReq((b) => b
          ..vars.owner = owner
          ..vars.name = name
          ..vars.branchSpecified = branch != null
          ..vars.branch = branch ?? '');
        final repo = await context.read<RepoBloc>().getRepo(req);
        final countFuture = context.read<RepoBloc>().getContributorsCount(owner, name);

        final readmeFactory = (String acceptHeader) {
          return () {
            return context.read<RepoBloc>().getReadme(owner, name, acceptHeader).then((res) {
              return res.body;
            }).catchError((err) {
              return null;
            });
          };
        };
        final readmeData = MarkdownViewData(
          context,
          md: readmeFactory('application/vnd.github.v3.raw'),
          html: readmeFactory('application/vnd.github.v3.html'),
        );

        return Tuple3(repo, countFuture, readmeData);
      },
      actionBuilder: (data, _) {
        final repo = data.item1!;
        return ActionButton(
          title: AppLocalizations.of(context)!.repositoryActions,
          items: [
            ActionItem(
              text: AppLocalizations.of(context)!.projects +
                  '(${repo.projects.totalCount})',
              url: repo.projectsUrl,
            ),
            ...ActionItem.getUrlActions(repo.url),
          ],
        );
      },
      bodyBuilder: (data, setData) {
        final repo = data.item1!;
        final contributionFuture = data.item2;
        final readmeData = data.item3;

        final ref = branch == null ? repo.defaultBranchRef : repo.ref;
        final license = repo.licenseInfo?.spdxId ?? repo.licenseInfo?.name;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RepoHeader(
              avatarUrl: repo.owner.avatarUrl,
              avatarLink: '/github/${repo.owner.login}',
              name: repo.name,
              owner: repo.owner.login,
              description: repo.description,
              homepageUrl: repo.homepageUrl,
              actions: [
                Row(
                  children: <Widget>[
                    MutationButton(
                      active: repo.viewerSubscription ==
                          GSubscriptionState.SUBSCRIBED,
                      text: _buildWatchState(repo.viewerSubscription),
                      onTap: () async {
                        theme.showActions(context, [
                          for (var v in GSubscriptionState.values)
                            ActionItem(
                              text: _buildWatchState(v),
                              onTap: (_) async {

                                final activityApi = client.activity;//TODO
                                switch (v) {
                                  case GSubscriptionState.SUBSCRIBED:
                                  case GSubscriptionState.IGNORED:
                                    await activityApi.setRepositorySubscription(
                                      RepositorySlug(
                                          repo.owner.login, repo.name),
                                      subscribed:
                                      v == GSubscriptionState.SUBSCRIBED,
                                      ignored: v == GSubscriptionState.IGNORED,
                                    );
                                    break;
                                  case GSubscriptionState.UNSUBSCRIBED:
                                    await activityApi
                                        .deleteRepositorySubscription(
                                      RepositorySlug(
                                        repo.owner.login,
                                        repo.name,
                                      ),
                                    );
                                    break;
                                  default:
                                }

                                setData(data.withItem1(repo.rebuild((b) {
                                  b.viewerSubscription = v;
                                })));
                              },
                            )
                        ]);
                      },
                    ),
                    SizedBox(width: 8),
                    MutationButton(
                      active: repo.viewerHasStarred,
                      text: repo.viewerHasStarred ? 'Unstar' : 'Star',
                      onTap: () async {
                        final activityApi = client.activity; //TODO
                        if (repo.viewerHasStarred) {
                          await activityApi.unstar(
                              RepositorySlug(repo.owner.login, repo.name));
                        } else {
                          await activityApi.star(
                              RepositorySlug(repo.owner.login, repo.name));
                        }
                        setData(data.withItem1(repo.rebuild((b) {
                          b.viewerHasStarred = !repo.viewerHasStarred;
                        })));
                      },
                    ),
                  ],
                ),
              ],
              trailings: <Widget>[
                if (repo.repositoryTopics.nodes!.isNotEmpty)
                  Wrap(
                    spacing: 4,
                    runSpacing: 4,
                    children: repo.repositoryTopics.nodes!.map((node) {
                      return MyLabel(
                        name: node.topic.name,
                        color: theme.palette.grayBackground,
                        textColor: theme.palette.primary,
                      );
                    }).toList(),
                  )
              ],
            ),
            CommonStyle.border,
            Row(
              children: <Widget>[
                EntryItem(
                  count: repo.watchers.totalCount,
                  text: AppLocalizations.of(context)!.watchers,
                  url: '/github/$owner/$name/watchers',
                ),
                EntryItem(
                  count: repo.stargazers.totalCount,
                  text: AppLocalizations.of(context)!.stars,
                  url: '/github/$owner/$name/stargazers',
                ),
                EntryItem(
                  count: repo.forks.totalCount,
                  text: AppLocalizations.of(context)!.forks,
                  url: 'https://github.com/$owner/$name/network/members',
                ),
              ],
            ),
            if (repo.languages!.edges!.isNotEmpty) ...[
              CommonStyle.border,
              LanguageBar([
                for (var edge in repo.languages!.edges!)
                  LanguageBarItem(
                    name: edge.node.name,
                    ratio: edge.size / repo.languages!.totalSize,
                    hexColor: edge.node.color,
                  )
              ]),
            ],
            TableView(
              hasIcon: true,
              items: [
                if (ref != null)
                  TableViewItem(
                    leftIconData: Octicons.code,
                    text: Text(repo.primaryLanguage?.name ?? 'Code'),
                    rightWidget: Text(
                      (license == null ? '' : '$license • ') +
                          filesize(repo.diskUsage! * 1000),
                    ),
                    url: '/github/$owner/$name/blob/${ref.name}',
                  ),
                if (repo.hasIssuesEnabled)
                  TableViewItem(
                    leftIconData: Octicons.issue_opened,
                    text: Text(AppLocalizations.of(context)!.issues),
                    rightWidget:
                    Text(numberFormat.format(repo.issues.totalCount)),
                    url: '/github/$owner/$name/issues',
                  ),
                TableViewItem(
                  leftIconData: Octicons.git_pull_request,
                  text: Text(AppLocalizations.of(context)!.pullRequests),
                  rightWidget:
                  Text(numberFormat.format(repo.pullRequests.totalCount)),
                  url: '/github/$owner/$name/pulls',
                ),
                if (ref != null) ...[
                  TableViewItem(
                    leftIconData: Octicons.history,
                    text: Text(AppLocalizations.of(context)!.commits),
                    rightWidget: Text(
                        ((ref.target as GRepoCommit).history.totalCount)
                            .toString()),
                    url: '/github/$owner/$name/commits/${ref.name}',
                  ),
                  if (repo.refs != null)
                    TableViewItem(
                      leftIconData: Octicons.git_branch,
                      text: Text(AppLocalizations.of(context)!.branches),
                      rightWidget: Text(ref.name +
                          ' • ' +
                          numberFormat.format(repo.refs!.totalCount)),
                      onTap: () async {
                        final refs = repo.refs!.nodes!;
                        if (refs.length < 2) return;

                        await theme.showPicker(
                          context,
                          PickerGroupItem(
                            value: ref.name,
                            items: refs
                                .map((b) => PickerItem(b.name, text: b.name))
                                .toList(),
                            onClose: (ref) {
                              if (ref != branch) {
                                theme.push(
                                    context, '/github/$owner/$name?ref=$ref',
                                    replace: true);
                              }
                            },
                          ),
                        );
                      },
                    ),
                  TableViewItem(
                    leftIconData: Octicons.organization,
                    text: Text(AppLocalizations.of(context)!.contributors),
                    rightWidget: FutureBuilder<int>(
                      future: contributionFuture,
                      builder: (context, snapshot) {
                        return Text(snapshot.data?.toString() ?? '');
                      },
                    ),
                    url: '/github/$owner/$name/contributors',
                  ),
                  TableViewItem(
                    leftIconData: Octicons.book,
                    text: Text("Releases"),
                    url: '/github/$owner/$name/releases',
                    rightWidget: Text(repo.releases.totalCount.toString()),
                  ),
                ],
              ],
            ),
            MarkdownView(readmeData),
          ],
        );
      },
    );
  });}
}
