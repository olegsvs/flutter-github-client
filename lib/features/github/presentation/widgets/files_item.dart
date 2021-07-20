import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/theme_map.dart';
import 'package:flutter_github_test/features/internal/theme.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:get_it/get_it.dart';

class FilesItem extends StatelessWidget {
  final String? filename;
  final String? status;
  final int? additions;
  final int? deletions;
  final String? patch;

  FilesItem({
    required this.filename,
    required this.status,
    required this.deletions,
    required this.additions,
    required this.patch,
  });

  AppModel get theme => GetIt.instance.get<AppModel>();

  @override
  Widget build(BuildContext context) {
    return Card(
      color: theme.palette.background,
      margin: EdgeInsets.all(0),
      child: ExpansionTile(
        title: Text(
          filename!,
          style: TextStyle(
            color: theme.palette.primary,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: HighlightView(
              patch!,
              language: 'diff',
              padding: CommonStyle.padding,
              textStyle: TextStyle(fontSize: 14)
            ),
          ),
        ],
      ),
    );
  }
}
