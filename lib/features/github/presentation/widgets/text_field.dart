import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_test/features/internal/theme.dart';
import 'package:get_it/get_it.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? placeholder;
  MyTextField({required this.controller, this.placeholder});

  AppModel get theme => GetIt.instance.get<AppModel>();

  @override
  Widget build(BuildContext context) {
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
