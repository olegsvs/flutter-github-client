import 'package:flutter/material.dart';
import 'package:flutter_github_test/features/internal/theme.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:get_it/get_it.dart';
import 'package:github/github.dart' as github;
import 'package:timeago/timeago.dart' as timeago;

import 'avatar.dart';
import 'link.dart';

class GistsItem extends StatelessWidget {
  final String? description;
  final String login;
  final List<String?> filenames;
  final String? language;
  final String? avatarUrl;
  final DateTime? updatedAt;
  final String? id;

  GistsItem({
    required this.description,
    required this.login,
    required this.filenames,
    required this.language,
    required this.avatarUrl,
    required this.updatedAt,
    required this.id,
  });

  AppModel get theme => GetIt.instance.get<AppModel>();

  @override
  Widget build(BuildContext context) {
    return LinkWidget(
      url: '/github/$login/gists/$id',
      child: Container(
        padding: CommonStyle.padding,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Avatar(
                        url: avatarUrl,
                        size: AvatarSize.small,
                        linkUrl: '/github/$login',
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text.rich(
                          TextSpan(children: [
                            TextSpan(
                              text: '$login / ',
                              style: TextStyle(
                                fontSize: 18,
                                color: theme.palette.primary,
                              ),
                            ),
                            TextSpan(
                              text: filenames[0],
                              style: TextStyle(
                                fontSize: 18,
                                color: theme.palette.primary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ]),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  if (description != null && description!.isNotEmpty) ...[
                    Text(
                      description!,
                      style: TextStyle(
                        color: theme.palette.secondaryText,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                  if (updatedAt != null) ...[
                    Text(
                      'Updated ${timeago.format(updatedAt!)}',
                      style: TextStyle(
                        fontSize: 14,
                        color: theme.palette.tertiaryText,
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                  DefaultTextStyle(
                    style: TextStyle(color: theme.palette.text, fontSize: 14),
                    child: Row(
                      children: <Widget>[
                        if (language != null)
                          Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              color: convertColor(
                                  github.languageColors[language!]),
                              shape: BoxShape.circle,
                            ),
                          ),
                        SizedBox(width: 4),
                        if (language != null)
                          Text(
                            language!,
                            overflow: TextOverflow.ellipsis,
                          ),
                        SizedBox(width: 24),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
