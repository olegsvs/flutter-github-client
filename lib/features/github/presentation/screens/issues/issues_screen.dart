import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github_test/core/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/core/graph_ql/github.req.gql.dart';
import 'package:flutter_github_test/core/graph_ql/github.var.gql.dart';
import 'package:flutter_github_test/features/github/presentation/scaffolds/list_stateful.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/action_entry.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/app_bar_title.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/issue_item.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/label.dart';
import 'package:flutter_github_test/utils/utils.dart';

import 'package:flutter_gen/gen_l10n/S.dart';

import 'issues_bloc.dart';

class GhIssuesScreen extends StatelessWidget {
  final String owner;
  final String name;
  GhIssuesScreen(this.owner, this.name);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IssuesBloc, IssuesState>(builder: (context, state) {
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
        final issues = await context.read<IssuesBloc>().getIssues(req);
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
  });}
}
