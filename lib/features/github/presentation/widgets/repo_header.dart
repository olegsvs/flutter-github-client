import 'package:flutter/material.dart';
import 'package:flutter_github_test/features/internal/theme.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:get_it/get_it.dart';
import 'avatar.dart';
import 'link.dart';

class RepoHeader extends StatelessWidget {
  final String? avatarUrl;
  final String? avatarLink;
  final String? owner;
  final String? name;
  final String? description;
  final String? homepageUrl;
  final List<Widget>? actions;
  final List<Widget>? trailings;

  RepoHeader({
    required this.avatarUrl,
    required this.avatarLink,
    required this.owner,
    required this.name,
    required this.description,
    this.homepageUrl,
    this.actions,
    this.trailings,
  });

  AppModel get theme => GetIt.instance.get<AppModel>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: CommonStyle.padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: join(SizedBox(height: 12), [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Avatar(
                url: avatarUrl,
                size: AvatarSize.small,
                linkUrl: avatarLink,
              ),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  '$owner / $name',
                  style: TextStyle(
                    fontSize: 20,
                    color: theme.palette.primary,
                  ),
                  overflow: TextOverflow.visible,
                ),
              ),
            ],
          ),
          if (actions != null) ...actions!,
          if (description != null && description!.isNotEmpty)
            Text(
              description!,
              style: TextStyle(
                color: theme.palette.secondaryText,
                fontSize: 17,
              ),
            ),
          if (homepageUrl != null && homepageUrl!.isNotEmpty)
            LinkWidget(
              url: homepageUrl,
              child: Text(
                homepageUrl!,
                style: TextStyle(
                  color: theme.palette.primary,
                  fontSize: 17,
                ),
              ),
            ),
          if (trailings != null) ...trailings!
        ]),
      ),
    );
  }
}
