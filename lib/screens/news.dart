import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_github_test/models/github.dart';
import 'package:flutter_github_test/models/notification.dart';
import 'package:flutter_github_test/scaffolds/list_stateful.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:flutter_github_test/widgets/app_bar_title.dart';
import 'package:provider/provider.dart';
import 'package:flutter_github_test/widgets/event_item.dart';
import 'package:flutter_github_test/models/login.dart';
import 'package:flutter_gen/gen_l10n/S.dart';

class GhNewsScreen extends StatefulWidget {
  @override
  GhNewsScreenState createState() => GhNewsScreenState();
}

class GhNewsScreenState extends State<GhNewsScreen> {
  @override
  initState() {
    super.initState();
    Future.microtask(() async {
      var items = await context
          .read<LoginModel>()
          .ghClient!
          .getJSON('/notifications?per_page=1');

      if (items is List && items.isNotEmpty) {
        context.read<NotificationModel>().setCount(1);
      }
    });
  }

  @override
  Widget build(context) {
    return ListStatefulScaffold<GithubEvent, int>(
      title: AppBarTitle(AppLocalizations.of(context)!.news),
      itemBuilder: (payload) => EventItem(payload),
      fetch: (page) async {
        page = page ?? 1;
        final auth = context.read<LoginModel>();
        final login = auth.activeAccount!.login;

        final events = await auth.ghClient!.getJSON(
          '/users/$login/received_events?page=$page&per_page=$pageSize',
          convert: (dynamic vs) => [for (var v in vs) GithubEvent.fromJson(v)],
        );
        return ListPayload(
          cursor: page + 1,
          hasMore: events.length == pageSize,
          items: events,
        );
      },
    );
  }
}
