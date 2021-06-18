import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_github_test/models/github.dart';
import 'package:flutter_github_test/scaffolds/list_stateful.dart';
import 'package:flutter_github_test/widgets/action_button.dart';
import 'package:flutter_github_test/widgets/app_bar_title.dart';
import 'package:provider/provider.dart';
import 'package:flutter_github_test/widgets/files_item.dart';
import 'package:flutter_github_test/models/login.dart';
import 'package:flutter_gen/gen_l10n/S.dart';

class GhFilesScreen extends StatelessWidget {
  final String owner;
  final String name;
  final int pullNumber;
  GhFilesScreen(this.owner, this.name, this.pullNumber);

  Widget build(BuildContext context) {
    return ListStatefulScaffold<GithubFilesItem, int>(
      title: AppBarTitle(AppLocalizations.of(context)!.files),
      actionBuilder: () {
        return ActionButton(
          title: 'Actions',
          items: [
            ...ActionItem.getUrlActions(
                'https://github.com/$owner/$name/pull/$pullNumber/files'),
          ],
        );
      },
      fetch: (page) async {
        page = page ?? 1;
        final res = await context
            .read<LoginModel>()
            .ghClient!
            .getJSON<List, List<GithubFilesItem>>(
              '/repos/$owner/$name/pulls/$pullNumber/files?page=$page',
              convert: (vs) => [for (var v in vs) GithubFilesItem.fromJson(v)],
            );
        return ListPayload(
          cursor: page + 1,
          items: res,
          hasMore: res.isNotEmpty,
        );
      },
      itemBuilder: (v) {
        return FilesItem(
          filename: v.filename,
          additions: v.additions,
          deletions: v.deletions,
          status: v.status,
          patch: v.patch,
        );
      },
    );
  }
}
