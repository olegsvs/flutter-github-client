import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_test/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/models/theme.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:flutter_github_test/widgets/avatar.dart';
import 'package:flutter_github_test/widgets/markdown_view.dart';
import 'package:flutter_github_test/widgets/table_view.dart';
import 'package:provider/provider.dart';
import 'package:timeago/timeago.dart' as timeago;

class ReleaseItem extends StatelessWidget {
  final String? login;
  final DateTime? publishedAt;
  final String? name;
  final String? avatarUrl;
  final String? tagName;
  final String? description;
  final GReleasesData_repository_releases_nodes_releaseAssets? releaseAssets;

  ReleaseItem(
      {required this.login,
      required this.publishedAt,
      required this.name,
      required this.tagName,
      required this.avatarUrl,
      required this.description,
      this.releaseAssets});

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeModel>(context);
    return Column(
      children: [
        SizedBox(
          height: 12,
        ),
        Row(children: <Widget>[
          Avatar(url: avatarUrl, size: AvatarSize.large),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      tagName!,
                      style: TextStyle(
                        color: theme.palette.primary,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6),
                DefaultTextStyle(
                  style: TextStyle(
                    color: theme.palette.secondaryText,
                    fontSize: 16,
                  ),
                  child: Text(
                      login! + " released " + timeago.format(publishedAt!)),
                ),
              ],
            ),
          ),
        ]),
        if (description != null && description!.isNotEmpty) ...[
          MarkdownFlutterView(
            description,
          ),
          SizedBox(height: 10),
        ],
        Card(
          color: theme.palette.grayBackground,
          margin: EdgeInsets.all(0),
          child: ExpansionTile(
            title: Text(
              'Assets (' + (releaseAssets?.nodes?.length ?? 0).toString() + ')',
              style: TextStyle(
                color: theme.palette.secondaryText,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            children: <Widget>[
              TableView(items: [
                if (releaseAssets != null)
                  for (var asset in releaseAssets!.nodes!)
                    TableViewItem(
                      text: Text(
                        asset.name,
                        style: TextStyle(
                          color: theme.palette.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      rightWidget: IconButton(
                          onPressed: () {
                            if (asset.downloadUrl != null) {
                              theme.push(context, asset.downloadUrl);
                            }
                          },
                          icon: Icon(Ionicons.download_outline)),
                      hideRightChevron: true,
                    ),
              ])
            ],
          ),
        )
      ],
    );
  }
}
