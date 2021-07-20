import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_test/core/graph_ql/github.data.gql.dart';
import 'package:flutter_github_test/core/graph_ql/schema.schema.gql.dart';
import 'package:flutter_github_test/features/internal/theme.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:get_it/get_it.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'action_button.dart';
import 'avatar.dart';
import 'link.dart';
import 'markdown_view.dart';
import 'user_name.dart';

class EmojiPayload {
  GReactionContent key;
  String text;
  int count;
  bool reacted;
  EmojiPayload({
    required this.key,
    required this.text,
    required this.count,
    required this.reacted,
  });
}

typedef EmojiUpdateCallaback = void Function(GReactionContent data);

class GhEmojiAction extends StatefulWidget {
  final String? id;
  final Iterable<EmojiPayload> items;
  final EmojiUpdateCallaback onReaction;

  GhEmojiAction(this.id, GReactableParts r, this.onReaction)
      : items = [
          EmojiPayload(
            key: GReactionContent.THUMBS_UP,
            text: '👍',
            count: r.THUMBS_UP.totalCount,
            reacted: r.THUMBS_UP.viewerHasReacted,
          ),
          EmojiPayload(
            key: GReactionContent.THUMBS_DOWN,
            text: '👎',
            count: r.THUMBS_DOWN.totalCount,
            reacted: r.THUMBS_DOWN.viewerHasReacted,
          ),
          EmojiPayload(
            key: GReactionContent.LAUGH,
            text: '😄',
            count: r.LAUGH.totalCount,
            reacted: r.LAUGH.viewerHasReacted,
          ),
          EmojiPayload(
            key: GReactionContent.HOORAY,
            text: '🎉',
            count: r.HOORAY.totalCount,
            reacted: r.HOORAY.viewerHasReacted,
          ),
          EmojiPayload(
            key: GReactionContent.CONFUSED,
            text: '😕',
            count: r.CONFUSED.totalCount,
            reacted: r.CONFUSED.viewerHasReacted,
          ),
          EmojiPayload(
            key: GReactionContent.HEART,
            text: '❤️',
            count: r.HEART.totalCount,
            reacted: r.HEART.viewerHasReacted,
          ),
          EmojiPayload(
            key: GReactionContent.ROCKET,
            text: '🚀',
            count: r.ROCKET.totalCount,
            reacted: r.ROCKET.viewerHasReacted,
          ),
          EmojiPayload(
            key: GReactionContent.EYES,
            text: '👀',
            count: r.EYES.totalCount,
            reacted: r.EYES.viewerHasReacted,
          ),
        ];
  @override
  _GhEmojiActionState createState() => _GhEmojiActionState();
}

class _GhEmojiActionState extends State<GhEmojiAction> {
  _onReaction(EmojiPayload item) async {
    final op = item.reacted ? 'remove' : 'add';
//TODO
    /*await context.read<LoginModel>().query('''
mutation {
  ${op}Reaction(input: {subjectId: "${widget.id}", content: ${item.key.name}}) {
    clientMutationId
  }
}
    ''');*/
    setState(() {
      item.reacted = !item.reacted;
      if (item.reacted) {
        item.count++;
      } else {
        item.count--;
      }
    });
  }

  AppModel get theme => GetIt.instance.get<AppModel>();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        for (final item in widget.items)
          if (item.count > 0)
            LinkWidget(
              onTap: () {
                _onReaction(item);
              },
              child: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.transparent
                ),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: <Widget>[
                    Text(item.text, style: TextStyle(fontSize: 18)),
                    SizedBox(width: 4),
                    Text(numberFormat.format(item.count),
                        style: TextStyle(
                            color: theme.palette.primary, fontSize: 14))
                  ],
                ),
              ),
            ),
        LinkWidget(
          onTap: () async {
            await theme.showActions(context, [
              for (final item in widget.items)
                ActionItem(
                  text: item.text,
                  onTap: (_) {
                    _onReaction(item);
                  },
                )
            ]);
          },
          child: Container(
            padding: EdgeInsets.all(4),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: <Widget>[
                Text('+', style: TextStyle(color: theme.palette.primary)),
                Icon(Octicons.smiley, color: theme.palette.primary, size: 18),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CommentItem extends StatelessWidget {
  final Avatar avatar;
  final String? login;
  final DateTime? createdAt;
  final String? body;
  final String prefix;
  final List<Widget>? widgets;
  final List<ActionItem>? commentActionItemList;

  CommentItem.gql(
      GCommentParts p, GReactableParts r, EmojiUpdateCallaback onReaction)
      : avatar = Avatar(
          url: p.author?.avatarUrl ??
              'https://avatars.githubusercontent.com/u/10137?s=460&u=b1951d34a583cf12ec0d3b0781ba19be97726318&v=4',
          linkUrl: '/github/' + (p.author?.login ?? 'ghost'),
        ),
        login = p.author?.login ?? 'ghost',
        createdAt = p.createdAt,
        body = p.body,
        widgets = [GhEmojiAction(p.id, r, onReaction)],
        prefix = 'github',
        commentActionItemList = [];

  CommentItem({
    required this.avatar,
    required this.login,
    required this.createdAt,
    required this.body,
    required this.prefix,
    this.widgets,
    this.commentActionItemList,
  });

  AppModel get theme => GetIt.instance.get<AppModel>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(children: <Widget>[
          avatar,
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                UserName(login, prefix),
                SizedBox(height: 2),
                Text(
                  timeago.format(createdAt!),
                  style: TextStyle(
                      color: theme.palette.tertiaryText, fontSize: 13),
                ),
              ],
            ),
          ),
          Align(
              alignment: Alignment.centerRight,
              child: ActionButton(
                iconData: Octicons.kebab_horizontal,
                title: 'Comment Actions',
                items: [
                  if (commentActionItemList != null) ...commentActionItemList!
                ],
              )),
        ]),
        SizedBox(height: 12),
        MarkdownFlutterView(body, padding: EdgeInsets.zero),
        SizedBox(height: 12),
        if (widgets != null) ...widgets!
      ],
    );
  }
}
