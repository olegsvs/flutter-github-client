import 'package:flutter/material.dart';
import 'package:flutter_github_test/scaffolds/common.dart';

class SingleScaffold extends StatelessWidget {
  final Widget title;
  final Widget body;
  final Widget? action;

  SingleScaffold({
    required this.title,
    required this.body,
    this.action,
  });

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: title,
      body: Scrollbar(child: SingleChildScrollView(child: body)),
      action: action,
    );
  }
}
