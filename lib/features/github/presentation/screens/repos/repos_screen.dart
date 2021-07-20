import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github_test/core/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/core/graph_ql/github.req.gql.dart';
import 'package:flutter_github_test/features/github/presentation/scaffolds/list_stateful.dart';
import 'package:flutter_github_test/features/github/presentation/screens/repos/repos_bloc.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/app_bar_title.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/repository_item.dart';
import 'package:timeago/timeago.dart' as timeago;

class GhRepos extends StatelessWidget {
  final String login;

  GhRepos(this.login);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReposBloc, ReposState>(builder: (context, state) {
      return ListStatefulScaffold<GReposRepoItem, String?>(
        title: AppBarTitle('Repositories'),
        fetch: (cursor) async {
          final req = GReposReq((b) {
            b.vars.login = login;
            b.vars.after = cursor;
          });
          final p = await context.read<ReposBloc>().getRepos(req);
          return ListPayload(
            cursor: p.pageInfo.endCursor,
            hasMore: p.pageInfo.hasNextPage,
            items: p.nodes,
          );
        },
        itemBuilder: (p) {
          return RepositoryItem.gql(p,
              note: 'Updated ${timeago.format(p.updatedAt)}');
        },
      );
    });
  }
}

class GhStars extends StatelessWidget {
  final String login;

  GhStars(this.login);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReposBloc, ReposState>(builder: (context, state) {
      return ListStatefulScaffold<GReposRepoItem, String?>(
        title: AppBarTitle('Stars'),
        fetch: (cursor) async {
          final req = GStarsReq((b) {
            b.vars.login = login;
            b.vars.after = cursor;
          });
          final p = await context.read<ReposBloc>().getStars(req);
          return ListPayload(
            cursor: p.pageInfo.endCursor,
            hasMore: p.pageInfo.hasNextPage,
            items: p.nodes,
          );
        },
        itemBuilder: (p) {
          return RepositoryItem.gql(p,
              note: 'Updated ${timeago.format(p.updatedAt)}');
        },
      );
    });
  }
}
