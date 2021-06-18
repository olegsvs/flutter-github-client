import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_github_test/models/github.dart';
import 'package:flutter_github_test/scaffolds/list_stateful.dart';
import 'package:flutter_github_test/widgets/app_bar_title.dart';
import 'package:flutter_github_test/widgets/contributor_item.dart';
import 'package:provider/provider.dart';
import 'package:flutter_github_test/models/login.dart';
import 'package:flutter_gen/gen_l10n/S.dart';

class GhContributorsScreen extends StatelessWidget {
  final String owner;
  final String name;
  GhContributorsScreen(this.owner, this.name);

  Widget build(BuildContext context) {
    return ListStatefulScaffold<GithubContributorItem, int>(
      title: AppBarTitle(AppLocalizations.of(context)!.contributors),
      fetch: (page) async {
        page = page ?? 1;
        final res = await context
            .read<LoginModel>()
            .ghClient!
            .getJSON<List, List<GithubContributorItem>>(
              '/repos/$owner/$name/contributors?page=$page',
              convert: (vs) =>
                  [for (var v in vs) GithubContributorItem.fromJson(v)],
            );
        return ListPayload(
          cursor: page + 1,
          items: res,
          hasMore: res.isNotEmpty,
        );
      },
      itemBuilder: (v) {
        final String? login = v.login;
        return ContributorItem(
          avatarUrl: v.avatarUrl,
          commits: v.contributions,
          login: v.login,
          url: '/github/$login?tab=contributors',
        );
      },
    );
  }
}
