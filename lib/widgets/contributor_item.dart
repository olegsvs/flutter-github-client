import 'package:flutter/material.dart';
import 'package:flutter_github_test/models/theme.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:flutter_github_test/widgets/avatar.dart';
import 'package:flutter_github_test/widgets/link.dart';
import 'package:provider/provider.dart';

class ContributorItem extends StatelessWidget {
  final String? login;
  final String? avatarUrl;
  final int? commits;
  final String url;

  ContributorItem({
    required this.login,
    required this.avatarUrl,
    required this.commits,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeModel>(context);
    return LinkWidget(
      url: url,
      child: Container(
        padding: CommonStyle.padding,
        child: Row(
          children: <Widget>[
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
                        login!,
                        style: TextStyle(
                          color: theme.palette.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  if (commits != null)
                    DefaultTextStyle(
                      style: TextStyle(
                        color: theme.palette.secondaryText,
                        fontSize: 16,
                      ),
                      child: Text("Commits: " + commits.toString()),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
