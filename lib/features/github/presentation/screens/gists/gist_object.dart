import 'package:flutter/material.dart';
import 'package:flutter_github_test/features/github/presentation/scaffolds/common.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/app_bar_title.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/blob_view.dart';

class GistObjectScreen extends StatelessWidget {
  final String login;
  final String id;
  final String file;
  final String? raw;
  final String? content;

  GistObjectScreen(this.login, this.id, this.file, {this.raw, this.content});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
        title: AppBarTitle(file),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: BlobView(
              file,
              text: content,
            )));
  }
}
