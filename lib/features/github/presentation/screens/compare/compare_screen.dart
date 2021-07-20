import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/S.dart';
import 'package:flutter_github_test/core/injection/injection.dart';
import 'package:flutter_github_test/features/github/presentation/scaffolds/refresh_stateful.dart';
import 'package:flutter_github_test/features/github/presentation/screens/compare/compare_bloc.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/action_button.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/app_bar_title.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/files_item.dart';

class GhComparisonScreen extends StatelessWidget {
  final String owner;
  final String name;
  final String before;
  final String head;

  GhComparisonScreen(this.owner, this.name, this.before, this.head);

  Widget build(BuildContext context) {
    return BlocProvider<CompareBloc>(
        create: (_) => getIt(),
        child:
            BlocBuilder<CompareBloc, CompareState>(builder: (context, state) {
          return RefreshStatefulScaffold(
            title: AppBarTitle(AppLocalizations.of(context)!.files),
            fetch: () async {
              final res = await context
                  .read<CompareBloc>()
                  .loadComparison(owner, name, before, head);
              return res.files;
            },
            actionBuilder: (dynamic v, _) {
              return ActionButton(
                title: AppLocalizations.of(context)!.actions,
                items: [
                  ...ActionItem.getUrlActions(
                      'https://github.com/$owner/$name/compare/$before...$head'),
                ],
              );
            },
            bodyBuilder: (dynamic v, _) {
              return Wrap(
                children: v
                    .map<Widget>((vs) => FilesItem(
                          filename: vs.filename,
                          additions: vs.additions,
                          deletions: vs.deletions,
                          status: vs.status,
                          patch: vs.patch ?? "No text to be shown here",
                        ))
                    .toList(),
              );
            },
          );
        }));
  }
}
