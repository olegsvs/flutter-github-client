import 'package:flutter/material.dart';
import 'package:flutter_github_test/features/internal/theme.dart';
import 'package:get_it/get_it.dart';
import 'link.dart';

class UserName extends StatelessWidget {
  final String? login;
  final String prefix;

  UserName(this.login, this.prefix);

  AppModel get theme => GetIt.instance.get<AppModel>();

  @override
  Widget build(BuildContext context) {
    return LinkWidget(
      url: '/$prefix/$login',
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        child: Text(
          login!,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: theme.palette.primary,
          ),
        ),
      ),
    );
  }
}
