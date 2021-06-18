import 'package:flutter/material.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_github_test/graph_ql/github.var.gql.dart';
import 'package:flutter_github_test/scaffolds/list_stateful.dart';
import 'package:flutter_github_test/widgets/app_bar_title.dart';
import 'package:flutter_github_test/widgets/release_item.dart';
import 'package:provider/provider.dart';
import 'package:flutter_github_test/models/login.dart';
import 'package:flutter_github_test/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/graph_ql/github.req.gql.dart';

class GhReleasesScreen extends StatelessWidget {
  final String owner;
  final String name;
  GhReleasesScreen(this.owner, this.name);

  @override
  Widget build(BuildContext context) {
    return ListStatefulScaffold<GReleasesData_repository_releases_nodes,
        String?>(
      title: AppBarTitle("Releases"),
      fetch: (page) async {
        final req = GReleasesReq((b) => b
          ..vars.owner = owner
          ..vars.name = name
          ..vars.cursor = page);
        final OperationResponse<GReleasesData, GReleasesVars?> res =
            await context.read<LoginModel>().gqlClient!.request(req).first;
        final releases = res.data!.repository!.releases;
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
  }
}
