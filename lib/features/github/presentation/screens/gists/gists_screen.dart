import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/S.dart';
import 'package:flutter_github_test/core/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/core/graph_ql/github.req.gql.dart';
import 'package:flutter_github_test/core/injection/injection.dart';
import 'package:flutter_github_test/features/github/presentation/scaffolds/list_stateful.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/app_bar_title.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/gists_item.dart';

import 'gists_bloc.dart';

class GhGistsScreen extends StatelessWidget {
  final String login;

  GhGistsScreen(this.login);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GistsBloc>(
        create: (_) => getIt(),
        child: BlocBuilder<GistsBloc, GistsState>(builder: (context, state) {
          return ListStatefulScaffold<GGistsData_user_gists_nodes, String?>(
            title: AppBarTitle(AppLocalizations.of(context)!.gists),
            fetch: (page) async {
              final req = GGistsReq((b) => b
                ..vars.login = login
                ..vars.after = page);
              final gists = await context.read<GistsBloc>().getGistsInPage(req);
              return ListPayload(
                cursor: gists.pageInfo.endCursor,
                items: gists.nodes,
                hasMore: gists.pageInfo.hasNextPage,
              );
            },
            itemBuilder: (v) {
              final filenames = [for (var file in v.files!) file.name];
              return GistsItem(
                description: v.description,
                login: login,
                filenames: filenames,
                language: v.files![0].language?.name,
                avatarUrl: v.owner!.avatarUrl,
                updatedAt: v.updatedAt,
                id: v.name,
              );
            },
          );
        }));
  }
}
