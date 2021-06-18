import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_github_test/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/graph_ql/github.req.gql.dart';
import 'package:flutter_github_test/graph_ql/github.var.gql.dart';
import 'package:flutter_github_test/models/login.dart';
import 'package:flutter_github_test/models/theme.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:flutter_github_test/widgets/action_button.dart';
import 'package:flutter_github_test/widgets/avatar.dart';
import 'package:flutter_github_test/widgets/link.dart';
import 'package:flutter_github_test/widgets/state_label.dart';
import 'package:flutter_github_test/widgets/timeline_item.dart';
import 'package:provider/provider.dart';
import 'package:github/github.dart' as github;
import '../scaffolds/long_list.dart';
import '../widgets/comment_item.dart';

class GhIssueScreen extends StatelessWidget {
  final String owner;
  final String name;
  final int number;
  GhIssueScreen(this.owner, this.name, this.number);

  Widget _buildHeader(
    BuildContext context, {
    required String? avatarUrl,
    required String title,
    required StateLabelStatus status,
    required Widget body,
    Iterable<Widget> extraWidgets = const [],
  }) {
    final theme = Provider.of<ThemeModel>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: CommonStyle.padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              LinkWidget(
                url: '/github/$owner/$name',
                child: Row(
                  children: <Widget>[
                    Avatar(url: avatarUrl, size: AvatarSize.extraSmall),
                    SizedBox(width: 4),
                    Text(
                      '$owner / $name',
                      style: TextStyle(
                        fontSize: 17,
                        color: theme.palette.secondaryText,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      '#$number',
                      style: TextStyle(
                        fontSize: 17,
                        color: theme.palette.tertiaryText,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 8),
              StateLabel(status, small: true),
              SizedBox(height: 8),
              CommonStyle.border,
              ...extraWidgets,
              SizedBox(height: 8),
              body,
            ],
          ),
        ),
        CommonStyle.border,
      ],
    );
  }

  Future<GIssueData_repository> _queryIssue(BuildContext context,
      {String? cursor}) async {
    final req = GIssueReq((b) {
      b.vars.owner = owner;
      b.vars.name = name;
      b.vars.number = number;
      b.vars.cursor = cursor;
    });
    OperationResponse<GIssueData, GIssueVars?> res =
        await context.read<LoginModel>().gqlClient!.request(req).first;
    return res.data!.repository!;
  }

  @override
  Widget build(BuildContext context) {
    return LongListStatefulScaffold<GIssueData_repository, dynamic>(
      title: Text('$owner/$name #$number'),
      trailingBuilder: (p) {
        if (p.issueOrPullRequest!.G__typename == 'Issue') {
          final d = p.issueOrPullRequest
              as GIssueData_repository_issueOrPullRequest__asIssue;
          return ActionButton(
            title: 'Actions',
            items: [
              if (!d.viewerCanUpdate)
                ActionItem(
                  text: d.closed ? 'Reopen issue' : 'Close issue',
                  onTap: (_) async {
                    await context.read<LoginModel>().ghClient!.issues.edit(
                        github.RepositorySlug(owner, name),
                        number,
                        github.IssueRequest(
                            state: d.closed ? 'open' : 'closed'));
                  },
                ),
              ...ActionItem.getUrlActions(d.url),
            ],
          );
        } else {
          final d = p.issueOrPullRequest
              as GIssueData_repository_issueOrPullRequest__asPullRequest;
          return ActionButton(
            title: 'Actions',
            items: [
              ...ActionItem.getUrlActions(d.url),
            ],
          );
        }
      },
      headerBuilder: (p) {
        final theme = Provider.of<ThemeModel>(context);
        if (p.issueOrPullRequest!.G__typename == 'Issue') {
          final issue = p.issueOrPullRequest
              as GIssueData_repository_issueOrPullRequest__asIssue;

          return _buildHeader(
            context,
            avatarUrl: issue.author!.avatarUrl,
            title: issue.title,
            status: issue.closed
                ? StateLabelStatus.issueClosed
                : StateLabelStatus.issueOpened,
            body: CommentItem.gql(issue, issue, (key) {}),
          );
        } else {
          final pr = p.issueOrPullRequest
              as GIssueData_repository_issueOrPullRequest__asPullRequest;
          return _buildHeader(
            context,
            avatarUrl: pr.author!.avatarUrl,
            title: pr.title,
            status: pr.merged
                ? StateLabelStatus.pullMerged
                : pr.closed
                    ? StateLabelStatus.pullClosed
                    : StateLabelStatus.pullOpened,
            body: CommentItem.gql(pr, pr, (key) {}),
            extraWidgets: [
              LinkWidget(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('${pr.changedFiles} files changed',
                          style: TextStyle(
                            color: theme.palette.secondaryText,
                            fontSize: 17,
                          )),
                      Row(
                        children: <Widget>[
                          Text('+${pr.additions}',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 15,
                              )),
                          SizedBox(width: 2),
                          Text('-${pr.deletions}',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                              )),
                          Icon(Ionicons.chevron_forward,
                              color: theme.palette.border),
                        ],
                      )
                    ],
                  ),
                ),
                url: '/github/$owner/$name/pull/$number/files',
              ),
              CommonStyle.border,
            ],
          );
        }
      },
      itemBuilder: (p) => TimelineItem(p),
      onRefresh: () async {
        final res = await _queryIssue(context);
        if (res.issueOrPullRequest!.G__typename == 'Issue') {
          final issue = res.issueOrPullRequest
              as GIssueData_repository_issueOrPullRequest__asIssue;
          return LongListPayload(
            header: res,
            totalCount: issue.timelineItems.totalCount,
            cursor: issue.timelineItems.pageInfo.endCursor!,
            leadingItems: issue.timelineItems.nodes!.toList(),
            trailingItems: [],
          );
        } else {
          final pr = res.issueOrPullRequest
              as GIssueData_repository_issueOrPullRequest__asPullRequest;
          return LongListPayload(
            header: res,
            totalCount: pr.timelineItems.totalCount,
            cursor: pr.timelineItems.pageInfo.endCursor!,
            leadingItems: pr.timelineItems.nodes!.toList(),
            trailingItems: [],
          );
        }
      },
      onLoadMore: (_cursor) async {
        final res = await _queryIssue(context, cursor: _cursor);
        if (res.issueOrPullRequest!.G__typename == 'Issue') {
          final issue = res.issueOrPullRequest
              as GIssueData_repository_issueOrPullRequest__asIssue;
          return LongListPayload(
            header: res,
            totalCount: issue.timelineItems.totalCount,
            cursor: issue.timelineItems.pageInfo.endCursor!,
            leadingItems: issue.timelineItems.nodes!.toList(),
          );
        } else {
          final pr = res.issueOrPullRequest
              as GIssueData_repository_issueOrPullRequest__asPullRequest;
          return LongListPayload(
            header: res,
            totalCount: pr.timelineItems.totalCount,
            cursor: pr.timelineItems.pageInfo.endCursor!,
            leadingItems: pr.timelineItems.nodes!.toList(),
          );
        }
      },
    );
  }
}
