import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_test/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/graph_ql/github.req.gql.dart';
import 'package:flutter_github_test/graph_ql/github.var.gql.dart';
import 'package:flutter_github_test/models/login.dart';
import 'package:flutter_github_test/scaffolds/list_stateful.dart';
import 'package:flutter_github_test/widgets/app_bar_title.dart';
import 'package:flutter_github_test/widgets/issue_item.dart';
import 'package:flutter_github_test/widgets/label.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/S.dart';

class GhPullsScreen extends StatelessWidget {
  final String owner;
  final String name;
  GhPullsScreen(this.owner, this.name);

  @override
  Widget build(BuildContext context) {
    return ListStatefulScaffold<GPullsData_repository_pullRequests_nodes,
        String?>(
      title: AppBarTitle(AppLocalizations.of(context)!.pullRequests),
      fetch: (cursor) async {
        final req = GPullsReq((b) {
          b.vars.owner = owner;
          b.vars.name = name;
          b.vars.cursor = cursor;
        });
        final OperationResponse<GPullsData, GPullsVars?> res =
            await context.read<LoginModel>().gqlClient!.request(req).first;
        final pulls = res.data!.repository!.pullRequests;
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
  }
}
