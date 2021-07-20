import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/S.dart';
import 'package:flutter_github_test/core/injection/injection.dart';
import 'package:flutter_github_test/features/github/presentation/scaffolds/list_stateful.dart';
import 'package:flutter_github_test/features/github/presentation/screens/orgs_repos/orgs_repos_bloc.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/app_bar_title.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/repository_item.dart';
import 'package:github/github.dart';
import 'package:timeago/timeago.dart' as timeago;

class GhOrgReposScreen extends StatelessWidget {
  final String owner;

  GhOrgReposScreen(this.owner);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrgsReposBloc>(
        create: (_) => getIt(),
        child: BlocBuilder<OrgsReposBloc, OrgsReposState>(
            builder: (context, state) {
          return ListStatefulScaffold<Repository, int>(
            title: AppBarTitle(AppLocalizations.of(context)!.repositories),
            fetch: (page) async {
              page = page ?? 1;
              final rs =
                  await context.read<OrgsReposBloc>().getOrgsRepos(owner, page);
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
        }));
  }
}
