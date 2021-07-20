import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_test/features/internal/theme.dart';
import 'package:get_it/get_it.dart';

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

  AppModel get theme => GetIt.instance.get<AppModel>();

  @override
  Widget build(BuildContext context) {
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
