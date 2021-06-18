import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_test/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/graph_ql/github.req.gql.dart';
import 'package:flutter_github_test/graph_ql/github.var.gql.dart';
import 'package:flutter_github_test/models/login.dart';
import 'package:flutter_github_test/scaffolds/list_stateful.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:flutter_github_test/widgets/action_entry.dart';
import 'package:flutter_github_test/widgets/app_bar_title.dart';
import 'package:flutter_github_test/widgets/issue_item.dart';
import 'package:flutter_github_test/widgets/label.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/S.dart';

class GhIssuesScreen extends StatelessWidget {
  final String owner;
  final String name;
  GhIssuesScreen(this.owner, this.name);

  @override
  Widget build(BuildContext context) {
    return ListStatefulScaffold<GIssuesData_repository_issues_nodes, String?>(
      title: AppBarTitle(AppLocalizations.of(context)!.issues),
      actionBuilder: () => ActionEntry(
        iconData: Octicons.plus,
        url: '/github/$owner/$name/issues/new',
      ),
      fetch: (cursor) async {
        final req = GIssuesReq((b) {
          b.vars.owner = owner;
          b.vars.name = name;
          b.vars.cursor = cursor;
        });
        final OperationResponse<GIssuesData, GIssuesVars?> res =
            await context.read<LoginModel>().gqlClient!.request(req).first;
        final issues = res.data!.repository!.issues;
        return ListPayload(
          cursor: issues.pageInfo.endCursor,
          hasMore: issues.pageInfo.hasNextPage,
          items: issues.nodes!.toList(),
        );
      },
      itemBuilder: (p) {
        return IssueItem(
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
          url: '/github/$owner/$name/issues/${p.number}',
        );
      },
    );
  }
}
