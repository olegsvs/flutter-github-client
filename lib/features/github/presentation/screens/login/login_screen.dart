import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github_test/features/github/domain/entities/account.dart';
import 'package:flutter_github_test/features/github/presentation/scaffolds/single.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/action_button.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/app_bar_title.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/avatar.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/link.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/loading.dart';
import 'package:flutter_gen/gen_l10n/S.dart';
import 'package:flutter_github_test/features/internal/theme.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'login_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  AppModel get theme => GetIt.instance.get<AppModel>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      Fimber.d(
          "LoginScreen: new state ${state.toString()}; type: ${state.runtimeType}");
      if (state is InitState) {
        Fimber.d("InitState");
        context.read<LoginBloc>().add(LoginEvent.getAccounts());
        return SingleScaffold(
            title: AppBarTitle(AppLocalizations.of(context)!.selectAccount),
            body: Center(child: Loading()));
      }
      if(state is OnActiveAccountChanged) {
        theme.reloadApp();
        return Container();
      }
      if (state is GetSavedAccounts) {
        Fimber.d("GetSavedAccounts, accounts: ${state.accounts}");
        return SingleScaffold(
            title: AppBarTitle(AppLocalizations.of(context)!.selectAccount),
            body: Container(
              child: Column(
                children: [
                  ...List.generate(state.accounts.length,(index){
                    return _buildAccountItem(index, state.accounts[index], state.selectedAccountIndex, context);
                  }),
                  _buildAddItem(
                    text: AppLocalizations.of(context)!.githubAccount,
                    brand: Ionicons.logo_github,
                    onTap: () async {
                      print("on account tap");
                      context.read<LoginBloc>().add(LoginEvent.openGithubOAuth());
                    },
                  ),
                  Container(
                    padding: CommonStyle.padding,
                    child: Text(
                      AppLocalizations.of(context)!.longPressToRemoveAccount,
                      style: TextStyle(
                        fontSize: 16, color: theme.palette.secondaryText,
                      ),
                    ),
                  )
                ],
              ),
            ));
      }
      throw ArgumentError("LoginScreen: Unknown state");
    });
  }

  Widget _buildAddItem(
      {IconData? brand, required String text, Function? onTap}) {
    return LinkWidget(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: theme.palette.border)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Ionicons.add),
            SizedBox(width: 4),
            Icon(brand),
            SizedBox(width: 8),
            Text(text, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
      onTap: onTap,
    );
  }

  Widget _buildAccountItem(int index, Account account, int selectedAccountIndex, BuildContext context) {
    return LinkWidget(
      onTap: () {
        print("on tap on account");
        context.read<LoginBloc>().add(LoginEvent.setActiveAccountAndReload(index));
      },
      onLongPress: () {
        print("on long tap on account");
        theme.showActions(context, [
          ActionItem(
            text: AppLocalizations.of(context)!.removeAccount,
            isDestructiveAction: true,
            onTap: (_) {
              //auth.removeAccount(index); //TODO
            },
          ),
        ]);
      },
      child: Container(
        padding: CommonStyle.padding,
        decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: theme.palette.border)),
        ),
        child: Row(
          children: <Widget>[
            Avatar(url: account.avatarUrl, size: AvatarSize.large),
            Padding(padding: EdgeInsets.only(left: 10)),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    account.login,
                    style: TextStyle(
                        fontSize: 20, color: theme.palette.text),
                  ),
                  Padding(padding: EdgeInsets.only(top: 6)),
                  Text(
                    account.domain,
                    style:
                        TextStyle(color: theme.palette.secondaryText),
                  )
                ],
              ),
            ),
            (index == selectedAccountIndex)
                ? Icon(Ionicons.checkmark)
                : Container(),
          ],
        ),
      ),
    );
  }
}
