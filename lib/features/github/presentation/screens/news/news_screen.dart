import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/S.dart';
import 'package:flutter_github_test/core/injection/injection.dart';
import 'package:flutter_github_test/features/github/domain/entities/github.dart';
import 'package:flutter_github_test/features/github/presentation/scaffolds/list_stateful.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/app_bar_title.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/event_item.dart';
import 'package:flutter_github_test/features/internal/theme.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:get_it/get_it.dart';

import 'news_bloc.dart';

class GhNewsScreen extends StatelessWidget {
  GhNewsScreen({Key? key}) : super(key: key);

  AppModel get theme => GetIt.instance.get<AppModel>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewsBloc>(
        create: (_) => getIt(),
        child: BlocBuilder<NewsBloc, NewsState>(builder: (context, state) {
          return ListStatefulScaffold<GithubEvent, int>(
            title: AppBarTitle(AppLocalizations.of(context)!.news),
            itemBuilder: (payload) => EventItem(payload),
            fetch: (page) async {
              page = page ?? 1;
              final events =
                  await context.read<NewsBloc>().getEventsInPage(page);
              return ListPayload(
                cursor: page + 1,
                hasMore: events.length == pageSize,
                items: events,
              );
            },
          );
        }));
  }
}
