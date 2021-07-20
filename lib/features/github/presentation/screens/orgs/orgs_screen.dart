import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/S.dart';
import 'package:flutter_github_test/features/github/domain/entities/github.dart';
import 'package:flutter_github_test/features/github/presentation/scaffolds/list_stateful.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/app_bar_title.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/user_item.dart';

import 'orgs_bloc.dart';

class GhUserOrganizationScreen extends StatelessWidget {
  final String login;

  GhUserOrganizationScreen(this.login);

  Widget build(BuildContext context) {
    return BlocBuilder<OrgsBloc, OrgsState>(builder: (context, state) {
      return ListStatefulScaffold<GithubUserOrganizationItem, int>(
        title: AppBarTitle(AppLocalizations.of(context)!.organizations),
        fetch: (page) async {
          page = page ?? 1;
          final res = await context.read<OrgsBloc>().getOrgs(login, page);
          return ListPayload(
            cursor: page + 1,
            items: res,
            hasMore: res.isNotEmpty,
          );
        },
        itemBuilder: (v) {
          return UserItem.github(
            avatarUrl: v.avatarUrl,
            login: v.login,
            name: null,
            bio: v.description == null ? null : Text(v.description!),
          );
        },
      );
    });
  }
}
