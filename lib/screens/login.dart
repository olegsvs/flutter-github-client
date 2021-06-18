import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_test/models/login.dart';
import 'package:flutter_github_test/models/theme.dart';
import 'package:flutter_github_test/scaffolds/single.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:flutter_github_test/widgets/action_button.dart';
import 'package:flutter_github_test/widgets/app_bar_title.dart';
import 'package:provider/provider.dart';
import '../widgets/link.dart';
import '../widgets/loading.dart';
import '../widgets/avatar.dart';
import 'package:flutter_gen/gen_l10n/S.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget _buildAccountItem(int index) {
    final theme = Provider.of<ThemeModel>(context);
    final auth = Provider.of<LoginModel>(context);
    final account = auth.accounts![index];
    return LinkWidget(
      onTap: () {
        auth.setActiveAccountAndReload(index);
      },
      onLongPress: () {
        theme.showActions(context, [
          ActionItem(
            text: AppLocalizations.of(context)!.removeAccount,
            isDestructiveAction: true,
            onTap: (_) {
              auth.removeAccount(index);
            },
          ),
        ]);
      },
      child: Container(
        padding: CommonStyle.padding,
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: theme.palette.border)),
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
                    style: TextStyle(fontSize: 20, color: theme.palette.text),
                  ),
                  Padding(padding: EdgeInsets.only(top: 6)),
                  Text(
                    account.domain,
                    style: TextStyle(color: theme.palette.secondaryText),
                  )
                ],
              ),
            ),
            (index == auth.activeAccountIndex)
            ? Icon(Ionicons.checkmark)
                : Container(),
          ],
        ),
      ),
    );
  }

  Widget _buildAddItem(
      {IconData? brand, required String text, Function? onTap}) {
    final theme = Provider.of<ThemeModel>(context);
    return LinkWidget(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: theme.palette.border)),
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

  void showError(err) {
    context.read<ThemeModel>().showConfirm(context,
        Text(AppLocalizations.of(context)!.somethingBadHappens + '$err'));
  }

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<LoginModel>(context);
    final theme = Provider.of<ThemeModel>(context);
    return SingleScaffold(
      title: AppBarTitle(AppLocalizations.of(context)!.selectAccount),
      body: auth.loading
          ? Center(child: Loading())
          : Container(
              child: Column(
                children: [
                  ...List.generate(auth.accounts!.length, _buildAccountItem),
                  _buildAddItem(
                    text: AppLocalizations.of(context)!.githubAccount,
                    brand: Ionicons.logo_github,
                    onTap: () async {
                      auth.redirectToGithubOauth();
                    },
                  ),
                  Container(
                    padding: CommonStyle.padding,
                    child: Text(
                      AppLocalizations.of(context)!.longPressToRemoveAccount,
                      style: TextStyle(
                        fontSize: 16,
                        color: theme.palette.secondaryText,
                      ),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
