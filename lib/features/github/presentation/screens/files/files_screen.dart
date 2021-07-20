import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/S.dart';
import 'package:flutter_github_test/core/injection/injection.dart';
import 'package:flutter_github_test/features/github/domain/entities/github.dart';
import 'package:flutter_github_test/features/github/presentation/scaffolds/list_stateful.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/action_button.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/app_bar_title.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/files_item.dart';

import 'files_bloc.dart';

class GhFilesScreen extends StatelessWidget {
  final String owner;
  final String name;
  final int pullNumber;

  GhFilesScreen(this.owner, this.name, this.pullNumber);

  Widget build(BuildContext context) {
    return BlocProvider<FilesBloc>(
        create: (_) => getIt(),
        child: BlocBuilder<FilesBloc, FilesState>(builder: (context, state) {
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
                  .read<FilesBloc>()
                  .getFilesInPage(owner, name, pullNumber, page);
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
        }));
  }
}
