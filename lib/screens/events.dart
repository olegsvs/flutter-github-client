import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_github_test/models/github.dart';
import 'package:flutter_github_test/scaffolds/list_stateful.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:flutter_github_test/widgets/app_bar_title.dart';
import 'package:provider/provider.dart';
import 'package:flutter_github_test/widgets/event_item.dart';
import 'package:flutter_github_test/models/login.dart';
import 'package:flutter_gen/gen_l10n/S.dart';

class GhEventsScreen extends StatelessWidget {
  final String login;
  GhEventsScreen(this.login);

  @override
  Widget build(context) {
    return ListStatefulScaffold<GithubEvent, int>(
      title: AppBarTitle(AppLocalizations.of(context)!.events),
      itemBuilder: (payload) => EventItem(payload),
      fetch: (page) async {
        page = page ?? 1;
        final events = await context.read<LoginModel>().ghClient!.getJSON(
            '/users/$login/events?page=$page&per_page=$pageSize',
            convert: (dynamic vs) =>
                [for (var v in vs) GithubEvent.fromJson(v)]);
        return ListPayload(
          cursor: page + 1,
          hasMore: events.length == pageSize,
          items: events,
        );
      },
    );
  }
}