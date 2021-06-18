import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_test/models/theme.dart';
import 'package:provider/provider.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? placeholder;
  MyTextField({required this.controller, this.placeholder});

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeModel>(context);
    switch (theme.theme) {
      case AppThemeType.cupertino:
      default:
        return CupertinoTextField(
          controller: controller,
          placeholder: placeholder,
          style: TextStyle(color: theme.palette.text),
        );
    }
  }
}
