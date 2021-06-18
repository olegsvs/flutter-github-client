import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_github_test/models/theme.dart';
import 'package:flutter_github_test/widgets/loading.dart';
import 'package:flutter_github_test/widgets/markdown_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_github_test/utils/utils.dart';

class BlobView extends StatelessWidget {
  final String? name;
  final String? text;
  final String? base64Text;
  final String? networkUrl;
  BlobView(
    this.name, {
    this.text,
    this.base64Text,
    this.networkUrl,
  });

  String get _text => text ?? base64Text!.base64ToUtf8;

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeModel>(context);
    switch (name!.ext) {
      case 'png':
      case 'jpg':
      case 'jpeg':
      case 'gif':
      case 'webp':
        return base64Text == null
            ? Image.network(
                networkUrl!,
                loadingBuilder: (_, child, p) {
                  if (p == null) return child;
                  return Loading();
                },
              )
            : Image.memory(base64.decode(base64Text!));
      case 'md':
      case 'markdown':
        return MarkdownFlutterView(_text);
      default:
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: HighlightView(
            _text,
            language: name!.ext ?? 'plaintext',
            padding: CommonStyle.padding,
            textStyle: TextStyle(fontSize: 14)),
        );
    }
  }
}
