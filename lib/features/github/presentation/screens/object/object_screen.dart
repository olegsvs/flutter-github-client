import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github_test/features/github/presentation/scaffolds/refresh_stateful.dart';
import 'package:flutter_github_test/features/github/presentation/screens/object/object_bloc.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/app_bar_title.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/blob_view.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/object_tree.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:github/github.dart';

class GhObjectScreen extends StatelessWidget {
  final String owner;
  final String name;
  final String ref;
  final String? path;
  final String? raw;
  GhObjectScreen(this.owner, this.name, this.ref, {this.path, this.raw});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ObjectBloc, ObjectState>(builder: (context, state) {
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
        final res = await context.read<ObjectBloc>().getObject(owner, name, suffix, ref);
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
  });}
}
