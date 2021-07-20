import 'package:flutter/material.dart';
import 'package:flutter_github_test/features/internal/theme.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:get_it/get_it.dart';
import 'avatar.dart';
import 'mutation_button.dart';

class UserHeader extends StatelessWidget {
  final String? avatarUrl;
  final String? name;
  final String? login;
  final DateTime? createdAt;
  final String? bio;
  final List<Widget> rightWidgets;

  UserHeader({
    required this.avatarUrl,
    required this.name,
    required this.login,
    required this.createdAt,
    required this.bio,
    bool isViewer = false,
    List<Widget>? rightWidgets,
  }) : rightWidgets = [
          if (isViewer)
            MutationButton(
              active: false,
              text: 'Switch accounts',
              url: '/login',
            )
          else
            ...(rightWidgets ?? []),
        ];

  AppModel get theme => GetIt.instance.get<AppModel>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: CommonStyle.padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Avatar(url: avatarUrl, size: AvatarSize.extraLarge),
              if (rightWidgets.isNotEmpty) ...[
                Expanded(child: Container()),
                ...rightWidgets,
              ]
            ],
          ),
          SizedBox(height: 8),
          if (name != null && name!.isNotEmpty) ...[
            Text(
              name!,
              style: TextStyle(
                color: theme.palette.text,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 4),
          ],
          Text(
            login!,
            style: TextStyle(
              color: theme.palette.primary,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 8),
          if (createdAt != null)
            Row(
              children: <Widget>[
                Icon(
                  Octicons.clock,
                  size: 16,
                  color: theme.palette.tertiaryText,
                ),
                SizedBox(width: 4),
                Text(
                  'Joined on ${dateFormat.format(createdAt!)}',
                  style: TextStyle(
                    color: theme.palette.tertiaryText,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          if (bio != null && bio!.isNotEmpty) ...[
            SizedBox(height: 10),
            Text(
              bio!,
              style: TextStyle(
                color: theme.palette.secondaryText,
                fontSize: 17,
              ),
            )
          ]
        ],
      ),
    );
  }
}
