import 'package:flutter/cupertino.dart';
import 'package:flutter_github_test/scaffolds/refresh_stateful.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:flutter_github_test/widgets/action_entry.dart';
import 'package:flutter_github_test/widgets/app_bar_title.dart';
import 'package:flutter_github_test/widgets/blob_view.dart';
import 'package:flutter_github_test/widgets/object_tree.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_test/models/login.dart';
import 'package:github/github.dart';
import 'package:provider/provider.dart';

class GhObjectScreen extends StatelessWidget {
  final String owner;
  final String name;
  final String ref;
  final String? path;
  final String? raw;
  GhObjectScreen(this.owner, this.name, this.ref, {this.path, this.raw});

  @override
  Widget build(BuildContext context) {
    return RefreshStatefulScaffold<RepositoryContents>(
      title: AppBarTitle(path == null ? 'Files' : path),
      fetch: () async {
        if (path != null &&
            raw != null &&
            ['png', 'jpg', 'jpeg', 'gif', 'webp'].contains(path!.ext)) {
          return RepositoryContents(
            file: GitHubFile(downloadUrl: raw, content: ''),
          );
        }

        final suffix = path == null ? '' : '/$path';
        final res = await context
            .read<LoginModel>()
            .ghClient!
            .repositories
            .getContents(RepositorySlug(owner, name), suffix, ref: ref);
        if (res.isDirectory) {
          res.tree!.sort((a, b) {
            return sortByKey('dir', a.type, b.type);
          });
        }
        return res;
      },
      actionBuilder: (data, _) {
          return null;
      },
      bodyBuilder: (data, _) {
        if (data.isDirectory) {
          return ObjectTree(
            items: data.tree!.map((v) {
              final uri = Uri(
                path: '/github/$owner/$name/blob/$ref',
                queryParameters: {
                  'path': v.path,
                  ...(v.downloadUrl == null ? {} : {'raw': v.downloadUrl}),
                },
              ).toString();
              return ObjectTreeItem(
                name: v.name,
                type: v.type,
                url: uri.toString(),
                downloadUrl: v.downloadUrl,
                size: v.type == 'file' ? v.size : null,
              );
            }),
          );
        } else {
          return BlobView(
            path,
            text: data.file!.text,
            networkUrl: data.file!.downloadUrl,
          );
        }
      },
    );
  }
}
