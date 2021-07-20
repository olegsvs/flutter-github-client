import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_test/features/github/domain/entities/github.dart';
import 'package:flutter_github_test/utils/utils.dart';

import 'package:flutter_github_test/features/internal/theme.dart';
import 'package:get_it/get_it.dart';

import 'issue_icon.dart';
import 'link.dart';

class NotificationItem extends StatefulWidget {
  final GithubNotificationItem payload;
  final Function markAsRead;

  NotificationItem({
    Key? key,
    required this.payload,
    required this.markAsRead,
  }) : super(key: key);

  @override
  _NotificationItemState createState() => _NotificationItemState();
}

class _NotificationItemState extends State<NotificationItem> {
  GithubNotificationItem get payload => widget.payload;
  bool loading = false;

  Widget _buildIcon(IconData data, [Color color = Colors.black54]) {
    return Icon(data, color: color, size: 20);
  }

  Widget _buildIconData() {
    switch (payload.subject!.type) {
      case 'Issue':
        switch (payload.state) {
          case 'OPEN':
            return IssueIcon(IssueIconState.open, size: 20);
          case 'CLOSED':
            return IssueIcon(IssueIconState.closed, size: 20);
          default:
            return _buildIcon(Octicons.person);
        }
      case 'PullRequest':
        switch (payload.state) {
          case 'OPEN':
            return IssueIcon(IssueIconState.prOpen, size: 20);
          case 'CLOSED':
            return IssueIcon(IssueIconState.prClosed, size: 20);
          case 'MERGED':
            return IssueIcon(IssueIconState.prMerged, size: 20);
          default:
            return _buildIcon(Octicons.person);
        }
      // color: Color.fromRGBO(0x6f, 0x42, 0xc1, 1),
      case 'Release':
        return _buildIcon(Octicons.tag);
      case 'Commit':
        return _buildIcon(Octicons.git_commit);
      case 'CheckSuite':
        return _buildIcon(Octicons.x, GithubPalette.closed);
      default:
        return _buildIcon(Octicons.octoface);
    }
  }

  AppModel get theme => GetIt.instance.get<AppModel>();

  Widget _buildCheckIcon() {
    return Icon(
      payload.unread! ? Octicons.mark_github : Octicons.primitive_dot,
      color:
          loading ? theme.palette.grayBackground : theme.palette.tertiaryText,
      size: 24,
    );
  }

  void _markAsRead() async {
    /*if (payload.unread! && !loading) {
      setState(() {
        loading = true;
      });
      try {
        await context
            .read<LoginModel>()
            .ghClient!
            .activity
            .markThreadRead(payload.id!);
        widget.markAsRead();
      } finally {
        if (mounted) {
          setState(() {
            loading = false;
          });
        }
      }
    }*/
  }

  String? get _url {
    final fullName = payload.repository!.fullName;
    switch (payload.subject!.type) {
      case 'Issue':
        return '/github/$fullName/issues/${payload.subject!.number}';
      case 'PullRequest':
        return '/github/$fullName/pull/${payload.subject!.number}';
      case 'Release':
        return 'https://github.com/$fullName/releases';
      case 'Commit':
      case 'CheckSuite':
        return '/github/$fullName';
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return LinkWidget(
      url: _url,
      onTap: _markAsRead,
      child: Opacity(
        opacity: payload.unread! ? 1 : 0.5,
        child: Container(
          padding: EdgeInsets.all(8),
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(right: 8),
                child: _buildIconData(),
              ),
              Expanded(
                child: Text(
                  payload.subject!.title!,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 15, color: theme.palette.text),
                ),
              ),
              LinkWidget(child: _buildCheckIcon(), onTap: _markAsRead),
            ],
          ),
        ),
      ),
    );
  }
}
