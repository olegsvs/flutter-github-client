import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_test/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/graph_ql/github.req.gql.dart';
import 'package:flutter_github_test/graph_ql/github.var.gql.dart';
import 'package:flutter_github_test/graph_ql/schema.schema.gql.dart';
import 'package:flutter_github_test/models/login.dart';
import 'package:flutter_github_test/scaffolds/list_stateful.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:flutter_github_test/widgets/app_bar_title.dart';
import 'package:flutter_github_test/widgets/commit_item.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/S.dart';

class GhCommits extends StatelessWidget {
  final String owner;
  final String name;
  final String? branch;
  GhCommits(this.owner, this.name, {this.branch});

  Widget _buildStatus(GStatusState? state) {
    const size = 18.0;
    switch (state) {
      case GStatusState.SUCCESS:
        return Icon(Octicons.check, color: GithubPalette.open, size: size);
      case GStatusState.FAILURE:
        return Icon(Octicons.x, color: GithubPalette.closed, size: size);
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListStatefulScaffold<GCommitsRefCommit_history_nodes, String?>(
      title: AppBarTitle(AppLocalizations.of(context)!.commits),
      fetch: (cursor) async {
        final req = GCommitsReq((b) {
          b.vars.owner = owner;
          b.vars.name = name;
          b.vars.hasRef = branch != null;
          b.vars.ref = branch ?? '';
          b.vars.after = cursor;
        });
        final OperationResponse<GCommitsData, GCommitsVars?> res =
            await context.read<LoginModel>().gqlClient!.request(req).first;
        final ref = res.data!.repository!.defaultBranchRef ??
            res.data!.repository!.ref!;
        final history = (ref.target as GCommitsRefCommit).history;
        return ListPayload(
          cursor: history.pageInfo.endCursor,
          hasMore: history.pageInfo.hasNextPage,
          items: history.nodes,
        );
      },
      itemBuilder: (p) {
        final login = p.author?.user?.login;
        return CommitItem(
          url: p.url,
          avatarUrl: p.author?.avatarUrl,
          avatarLink: login == null ? null : '/github/$login',
          message: p.messageHeadline,
          author: login ?? p.author!.name,
          createdAt: p.committedDate,
          widgets: p.status == null
              ? null
              : [
                  SizedBox(width: 4),
                  _buildStatus(p.status!.state),
                ],
        );
      },
    );
  }
}
