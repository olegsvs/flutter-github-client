import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github_test/core/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/core/graph_ql/github.req.gql.dart';
import 'package:flutter_github_test/core/graph_ql/github.var.gql.dart';
import 'package:flutter_github_test/features/github/presentation/scaffolds/list_stateful.dart';
import 'package:flutter_github_test/features/github/presentation/screens/pulls/pulls_bloc.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/app_bar_title.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/issue_item.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/label.dart';
import 'package:flutter_gen/gen_l10n/S.dart';

class GhPullsScreen extends StatelessWidget {
  final String owner;
  final String name;

  GhPullsScreen(this.owner, this.name);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PullsBloc, PullsState>(builder: (context, state) {
      return ListStatefulScaffold<GPullsData_repository_pullRequests_nodes,
          String?>(
        title: AppBarTitle(AppLocalizations.of(context)!.pullRequests),
        fetch: (cursor) async {
          final req = GPullsReq((b) {
            b.vars.owner = owner;
            b.vars.name = name;
            b.vars.cursor = cursor;
          });
          final pulls = await context.read<PullsBloc>().getPulls(req);
          return ListPayload(
            cursor: pulls.pageInfo.endCursor,
            hasMore: pulls.pageInfo.hasNextPage,
            items: pulls.nodes!.toList(),
          );
        },
        itemBuilder: (p) => IssueItem(
          isPr: true,
          author: p.author?.login,
          avatarUrl: p.author?.avatarUrl,
          commentCount: p.comments.totalCount,
          subtitle: '#' + p.number.toString(),
          title: p.title,
          updatedAt: p.updatedAt,
          labels: p.labels!.nodes!.isEmpty
              ? null
              : Wrap(spacing: 4, runSpacing: 4, children: [
                  for (var label in p.labels!.nodes!)
                    MyLabel(name: label.name, cssColor: label.color)
                ]),
          url: '/github/$owner/$name/pull/${p.number}',
        ),
      );
    });
  }
}
