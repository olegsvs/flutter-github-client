import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/S.dart';
import 'package:flutter_github_test/features/github/presentation/scaffolds/single.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/app_bar_title.dart';

class NotFoundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleScaffold(
      title: AppBarTitle(AppLocalizations.of(context)!.notFoundMessage),
      body: Text(AppLocalizations.of(context)!.notFoundTextDisplay),
    );
  }
}
