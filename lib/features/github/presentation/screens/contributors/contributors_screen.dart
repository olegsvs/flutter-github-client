import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/S.dart';
import 'package:flutter_github_test/core/injection/injection.dart';
import 'package:flutter_github_test/features/github/domain/entities/github.dart';
import 'package:flutter_github_test/features/github/presentation/scaffolds/list_stateful.dart';
import 'package:flutter_github_test/features/github/presentation/screens/contributors/contributors_bloc.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/app_bar_title.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/contributor_item.dart';

class GhContributorsScreen extends StatelessWidget {
  final String owner;
  final String name;

  GhContributorsScreen(this.owner, this.name);

  Widget build(BuildContext context) {
    return BlocProvider<ContributorsBloc>(
        create: (_) => getIt(),
        child: BlocBuilder<ContributorsBloc, ContributorsState>(
            builder: (context, state) {
          return ListStatefulScaffold<GithubContributorItem, int>(
            title: AppBarTitle(AppLocalizations.of(context)!.contributors),
            fetch: (page) async {
              page = page ?? 1;
              final res = await context
                  .read<ContributorsBloc>()
                  .getContributors(owner, name, page);
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
        }));
  }
}
