import 'package:flutter/material.dart';
import 'package:flutter_github_test/features/internal/theme.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:get_it/get_it.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'avatar.dart';
import 'link.dart';

const issueGqlChunk = '''
url
number
title
updatedAt
author {
  login
  avatarUrl
}
repository {
  owner {
    login
  }
  name
}
labels(first: 10) {
  nodes {
    name
    color
  }
}
comments {
  totalCount
}
''';

class IssueItem extends StatelessWidget {
  final String? url;
  final String subtitle;
  final String? title;
  final int? commentCount;
  final DateTime? updatedAt;
  final String? avatarUrl;
  final String? author;
  final Widget? labels;
  final bool isPr;

  IssueItem({
    required this.url,
    required this.subtitle,
    required this.title,
    required this.commentCount,
    required this.updatedAt,
    required this.avatarUrl,
    required this.author,
    this.labels,
    this.isPr = false,
  });

  AppModel get theme => GetIt.instance.get<AppModel>();

  @override
  Widget build(BuildContext context) {
    return LinkWidget(
      url: url,
      child: Container(
        padding: CommonStyle.padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(isPr ? Octicons.git_pull_request : Octicons.issue_opened,
                    color: GithubPalette.open, size: 20),
                SizedBox(width: 6),
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: join(SizedBox(height: 8), [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: '$title '),
                              TextSpan(
                                text: '$subtitle',
                                style: TextStyle(
                                  color: theme.palette.tertiaryText,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          style: TextStyle(
                            fontSize: 17,
                            color: theme.palette.text,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        if (labels != null) labels!,
                        DefaultTextStyle(
                          style: TextStyle(
                            fontSize: 14,
                            color: theme.palette.secondaryText,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              if (avatarUrl != null) ...[
                                Avatar(
                                  size: AvatarSize.extraSmall,
                                  url: avatarUrl,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  author!,
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                              Expanded(
                                  child: Text(
                                ' opened ' + timeago.format(updatedAt!),
                                style: TextStyle(
                                  fontSize: 17,
                                  color: theme.palette.secondaryText,
                                ),
                                overflow: TextOverflow.ellipsis,
                              )),
                              if (commentCount! > 0) ...[
                                Expanded(child: SizedBox()),
                                Icon(Octicons.comment,
                                    size: 14,
                                    color: theme.palette.secondaryText),
                                SizedBox(width: 3),
                                Text(numberFormat.format(commentCount))
                              ],
                            ],
                          ),
                        )
                      ]),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
