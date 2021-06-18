import 'package:flutter/material.dart';
import 'package:flutter_github_test/models/theme.dart';
import 'package:flutter_github_test/widgets/link.dart';
import 'package:provider/provider.dart';

class UserName extends StatelessWidget {
  final String? login;
  final String prefix;

  UserName(this.login, this.prefix);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeModel>(context);
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
