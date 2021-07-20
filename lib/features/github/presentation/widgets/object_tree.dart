import 'package:filesize/filesize.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/table_view.dart';
import 'package:flutter_github_test/utils/git_color_scheme.dart';
import 'package:flutter_github_test/utils/utils.dart';

class ObjectTreeItem {
  final String? url;
  final String? downloadUrl;
  final String? name;
  final String? type;
  final int? size;
  ObjectTreeItem({
    required this.name,
    required this.url,
    required this.downloadUrl,
    required this.type,
    this.size,
  });
}

class ObjectTree extends StatelessWidget {
  final Iterable<ObjectTreeItem> items;
  ObjectTree({required this.items});

  Widget _buildIcon(ObjectTreeItem item) {
    switch (item.type) {
      case 'blob':
      case 'file':
      case 'tree':
      case 'dir':
      case 'commit':
        return Icon(
          Octicons.file_submodule,
          color: GitColors.blue300,
          size: 24,
        );
      default:
        throw 'object type error';
    }
  }

  @override
  Widget build(BuildContext context) {
    return TableView(
      hasIcon: true,
      items: [
        for (var item in items)
          TableViewItem(
            leftWidget: _buildIcon(item),
            text: Text(item.name!),
            rightWidget: item.size == null ? null : Text(filesize(item.size)),
            url: [
              'pdf', 'docx', 'doc', 'pptx', 'ppt', 'xlsx', 'xls',
              'ttf', 'otf', 'eot', 'woff', 'woff2',
              'svg',
            ].contains(item.name!.ext)
                ? item.downloadUrl
                : item.url,
            hideRightChevron: item.size != null,
          )
      ],
    );
  }
}
