import 'package:flutter/material.dart';
import 'package:flutter_github_test/models/login.dart';
import 'package:flutter_github_test/scaffolds/list_stateful.dart';
import 'package:flutter_github_test/widgets/app_bar_title.dart';
import 'package:flutter_github_test/widgets/repository_item.dart';
import 'package:provider/provider.dart';
import 'package:github/github.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:flutter_gen/gen_l10n/S.dart';


class GhOrgReposScreen extends StatelessWidget {
  final String owner;
  GhOrgReposScreen(this.owner);

  @override
  Widget build(BuildContext context) {
    return ListStatefulScaffold<Repository, int>(
      title: AppBarTitle(AppLocalizations.of(context)!.repositories),
      fetch: (page) async {
        page = page ?? 1;
        final rs = await context
            .read<LoginModel>()
            .ghClient!
            .getJSON<List, List<Repository>>(
              '/orgs/$owner/repos?sort=updated&page=$page',
              convert: (vs) => [for (var v in vs) Repository.fromJson(v)],
            );
        return ListPayload(
          cursor: page + 1,
          items: rs,
          hasMore: rs.isNotEmpty,
        );
      },
      itemBuilder: (v) {
        return RepositoryItem.gh(
          owner: v.owner!.login,
          avatarUrl: v.owner!.avatarUrl,
          name: v.name,
          description: v.description,
          starCount: v.stargazersCount,
          forkCount: v.forksCount,
          primaryLanguageName: v.language,
          primaryLanguageColor: null,
          note: 'Updated ${timeago.format(v.updatedAt!)}',
          isPrivate: v.isPrivate,
          isFork: v.isFork,
        );
      },
    );
  }
}
