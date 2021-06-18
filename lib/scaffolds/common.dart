import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_test/models/theme.dart';
import 'package:provider/provider.dart';

class CommonScaffold extends StatelessWidget {
  final Widget title;
  final Widget body;
  final Widget? action;
  final PreferredSizeWidget? bottom;

  CommonScaffold({
    required this.title,
    required this.body,
    this.action,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeModel>(context);
    theme.setSystemBrightness(MediaQuery.of(context).platformBrightness);

    switch (theme.theme) {
      case AppThemeType.cupertino:
        return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: title,
            trailing: action,
          ),
          child: SafeArea(child: body),
        );
      default:
        return Scaffold(
          appBar: AppBar(
            title: title,
            actions: [
              if (action != null) action!,
            ],
            bottom: bottom,
          ),
          body: body,
        );
    }
  }
}
