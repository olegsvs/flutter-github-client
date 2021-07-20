import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/S.dart';
import 'package:flutter_github_test/core/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/core/graph_ql/github.req.gql.dart';
import 'package:flutter_github_test/core/graph_ql/schema.schema.gql.dart';
import 'package:flutter_github_test/core/injection/injection.dart';
import 'package:flutter_github_test/features/github/presentation/scaffolds/list_stateful.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/app_bar_title.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/commit_item.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'commits_bloc.dart';

class GhCommitsScreen extends StatelessWidget {
  final String owner;
  final String name;
  final String? branch;

  GhCommitsScreen(this.owner, this.name, {this.branch});

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
    return BlocProvider<CommitsBloc>(
        create: (_) => getIt(),
        child: BlocBuilder<CommitsBloc, CommitsState>(builder: (context, state) {
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
              final history = await context.read<CommitsBloc>().getCommits(req);
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
        }));
  }
}
