import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/S.dart';
import 'package:flutter_github_test/features/github/domain/entities/github.dart';
import 'package:flutter_github_test/features/github/presentation/scaffolds/list_stateful.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/app_bar_title.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/event_item.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:provider/provider.dart';

import 'events_bloc.dart';

class GhEventsScreen extends StatelessWidget {
  final String login;

  GhEventsScreen(this.login);

  @override
  Widget build(context) {
    return BlocBuilder<EventsBloc, EventsState>(builder: (context, state) {
      return ListStatefulScaffold<GithubEvent, int>(
        title: AppBarTitle(AppLocalizations.of(context)!.events),
        itemBuilder: (payload) => EventItem(payload),
        fetch: (page) async {
          page = page ?? 1;
          final events = await context.read<EventsBloc>().getEventsInPage(page);
          return ListPayload(
            cursor: page + 1,
            hasMore: events.length == pageSize,
            items: events,
          );
        },
      );
    });
  }
}
