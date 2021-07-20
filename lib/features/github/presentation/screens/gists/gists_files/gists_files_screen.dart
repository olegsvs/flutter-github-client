import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/S.dart';
import 'package:flutter_github_test/core/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/core/graph_ql/github.req.gql.dart';
import 'package:flutter_github_test/core/injection/injection.dart';
import 'package:flutter_github_test/features/github/presentation/scaffolds/refresh_stateful.dart';
import 'package:flutter_github_test/features/github/presentation/screens/gists/gists_files/gists_files_bloc.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/app_bar_title.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/object_tree.dart';

class GhGistsFilesScreen extends StatelessWidget {
  final String id;
  final String login;

  GhGistsFilesScreen(this.login, this.id);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GistsFilesBloc>(
        create: (_) => getIt(),
        child: BlocBuilder<GistsFilesBloc, GistsFilesState>(
            builder: (context, state) {
          return RefreshStatefulScaffold<GGistData_user_gist?>(
            title: AppBarTitle(AppLocalizations.of(context)!.files),
            fetch: () async {
              final req = GGistReq((b) => b
                ..vars.login = login
                ..vars.name = id);
              final gist =
                  await context.read<GistsFilesBloc>().getGistsFilesInPage(req);
              return gist;
            },
            bodyBuilder: (payload, _) {
              return ObjectTree(
                items: payload!.files!.map((v) {
                  final uri = Uri(
                    path: '/github/$login/gists/$id/${v.name}',
                    queryParameters: {
                      'content': v.text,
                    },
                  ).toString();
                  return ObjectTreeItem(
                    url: uri,
                    type: 'file',
                    name: v.name,
                    downloadUrl: null,
                    size: v.size,
                  );
                }),
              );
            },
          );
        }));
  }
}
