import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_github_test/features/internal/theme.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:get_it/get_it.dart';
import 'package:path/path.dart' as path;
import 'package:uri/uri.dart';

import 'html_view.dart';

class MarkdownViewData {
  final Future<String> future;
  MarkdownViewData(
    BuildContext context, {
    required Future<String> Function() md,
    required Future<String> Function() html,
  }) : future = theme.shouldUseMarkdownFlutterView
            ? md()
            : html();
}

class MarkdownView extends StatelessWidget {
  final MarkdownViewData? data;
  MarkdownView(this.data);

  AppModel get theme => GetIt.instance.get<AppModel>();

  @override
  Widget build(BuildContext context) {
    if (data?.future == null) return Container();

    if (theme.shouldUseMarkdownFlutterView) {
      return FutureBuilder<String>(
        future: data!.future,
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return Container();
          } else {
            return MarkdownFlutterView(snapshot.data);
          }
        },
      );
    } else {
      return FutureBuilder<String>(
        future: data!.future,
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return Container();
          } else {
            return MarkdownWebView(snapshot.data);
          }
        },
      );
    }
  }
}

class MarkdownWebView extends StatelessWidget {
  final String? html;
  MarkdownWebView(this.html);

  @override
  Widget build(BuildContext context) {
    var css = theme.markdownCss ?? '';
    return HtmlView(html!, cssText: css);
  }
}

class MarkdownFlutterView extends StatelessWidget {
  final String? text;
  final List<String>? basePaths;
  final EdgeInsetsGeometry padding;

  MarkdownFlutterView(
    this.text, {
    this.basePaths,
    this.padding = const EdgeInsets.all(12),
  });

  static Map<String, String?>? matchPattern(String url, String pattern) {
    var uri = Uri.parse(url);
    return UriParser(UriTemplate(pattern)).match(uri)?.parameters;
  }

  @override
  Widget build(BuildContext context) {
    final _basicStyle =
        TextStyle(fontSize: 16, color: theme.palette.text, height: 1.5);
    final _hStyle =
        _basicStyle.copyWith(fontWeight: FontWeight.w600, height: 1.25);

    return Container(
      padding: padding,
      child: MarkdownBody(
        data: text!,
        selectable: true,
        imageBuilder: (uri, title, alt) {
          if (uri.scheme == 'http' || uri.scheme == 'https') {
            return Image.network(uri.toString());
          } else {
            return Container();
          }
        },
        onTapLink: (text, url, title) {

          if (basePaths != null &&
              !url!.startsWith('https://') &&
              !url.startsWith('http://')) {

            final x = basePaths!.sublist(3).join('/');
            var y = path.join(x, url);
            if (y.startsWith('/')) y = y.substring(1);

            return theme.push(context,
                '/${basePaths![0]}/${basePaths![1]}/${basePaths![2]}?path=${y.urlencode}');
          }

          if (url!.startsWith('https://github.com')) {
            const matchedPaths = [
              '/{owner}/{name}/pull/{number}',
              '/{owner}/{name}/issues/{number}',
              '/{owner}/{name}',
              '/{login}'
            ];
            for (var p in matchedPaths) {
              final m = matchPattern(url, p);
              if (m != null) {
                return theme.push(context,
                    url.replaceFirst(RegExp(r'https://github.com'), '/github'));
              }
            }
          }

          launchUrl(url);
        },
        styleSheet: MarkdownStyleSheet(
          a: _basicStyle.copyWith(color: theme.palette.primary),
          p: _basicStyle,
          code: _basicStyle.copyWith(
            backgroundColor: theme.palette.grayBackground,
            fontSize: 16 * 0.85,
            height: 1.45
          ),
          h1: _hStyle.copyWith(fontSize: 32),
          h2: _hStyle.copyWith(fontSize: 24),
          h3: _hStyle.copyWith(fontSize: 20),
          h4: _hStyle,
          h5: _hStyle.copyWith(fontSize: 14),
          h6: _hStyle.copyWith(
              fontSize: 16 * 0.85, color: theme.palette.tertiaryText),
          em: _basicStyle.copyWith(fontStyle: FontStyle.italic),
          strong: _basicStyle.copyWith(fontWeight: FontWeight.w600),
          del: const TextStyle(decoration: TextDecoration.lineThrough),
          blockquote: _basicStyle.copyWith(color: theme.palette.tertiaryText),
          img: _basicStyle,
          checkbox: _basicStyle,
          blockSpacing: 16,
          listIndent: 32,
          listBullet: _basicStyle,
          tableBody: _basicStyle,
          blockquotePadding: EdgeInsets.symmetric(horizontal: 16),
          blockquoteDecoration: BoxDecoration(
            border:
                Border(left: BorderSide(color: Color(0xffdfe2e5), width: 4)),
          ),
          codeblockPadding: EdgeInsets.all(16),
          codeblockDecoration: BoxDecoration(
            color: theme.palette.grayBackground,
            borderRadius: BorderRadius.circular(3),
          ),
          horizontalRuleDecoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 4,
                color: theme.palette.grayBackground,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
