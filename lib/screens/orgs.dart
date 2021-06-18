import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_github_test/models/github.dart';
import 'package:flutter_github_test/scaffolds/list_stateful.dart';
import 'package:flutter_github_test/widgets/app_bar_title.dart';
import 'package:flutter_github_test/widgets/user_item.dart';
import 'package:provider/provider.dart';
import 'package:flutter_github_test/models/login.dart';
import 'package:flutter_gen/gen_l10n/S.dart';

class GhUserOrganizationScreen extends StatelessWidget {
  final String login;
  GhUserOrganizationScreen(this.login);

  Widget build(BuildContext context) {
    return ListStatefulScaffold<GithubUserOrganizationItem, int>(
      title: AppBarTitle(AppLocalizations.of(context)!.organizations),
      fetch: (page) async {
        page = page ?? 1;
        final res = await context
            .read<LoginModel>()
            .ghClient!
            .getJSON<List, List<GithubUserOrganizationItem>>(
              '/users/$login/orgs?page=$page',
              convert: (vs) =>
                  [for (var v in vs) GithubUserOrganizationItem.fromJson(v)],
            );
        return ListPayload(
          cursor: page + 1,
          items: res,
          hasMore: res.isNotEmpty,
        );
      },
      itemBuilder: (v) {
        return UserItem.github(
          avatarUrl: v.avatarUrl,
          login: v.login,
          name: null,
          bio: v.description == null ? null : Text(v.description!),
        );
      },
    );
  }
}
