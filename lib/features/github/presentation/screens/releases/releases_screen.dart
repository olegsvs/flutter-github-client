import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github_test/core/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/core/graph_ql/github.req.gql.dart';
import 'package:flutter_github_test/features/github/presentation/scaffolds/list_stateful.dart';
import 'package:flutter_github_test/features/github/presentation/screens/releases/releases_bloc.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/app_bar_title.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/release_item.dart';

class GhReleasesScreen extends StatelessWidget {
  final String owner;
  final String name;

  GhReleasesScreen(this.owner, this.name);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReleasesBloc, ReleasesState>(builder: (context, state) {
      return ListStatefulScaffold<GReleasesData_repository_releases_nodes,
          String?>(
        title: AppBarTitle("Releases"),
        fetch: (page) async {
          final req = GReleasesReq((b) => b
            ..vars.owner = owner
            ..vars.name = name
            ..vars.cursor = page);
          final releases = await context.read<ReleasesBloc>().getReleases(req);
          return ListPayload(
            cursor: releases.pageInfo.endCursor,
            items: releases.nodes,
            hasMore: releases.pageInfo.hasNextPage,
          );
        },
        itemBuilder: (v) {
          return ReleaseItem(
            tagName: v.tagName,
            publishedAt: v.publishedAt,
            avatarUrl: v.author!.avatarUrl,
            login: v.author!.name,
            name: v.name,
            description: v.description,
            releaseAssets: v.releaseAssets,
          );
        },
      );
    });
  }
}
