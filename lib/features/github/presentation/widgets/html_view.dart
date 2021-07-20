import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HtmlView extends StatefulWidget {
  final String html;
  HtmlView(String text, {String? cssText, List<String> cssLinks = const []})
      : html = '<meta name="viewport" content="width=device-width">' +
            cssLinks
                .map((link) =>
                    '<link rel="stylesheet" href="$link" crossorigin="anonymous" />')
                .join('') +
            '<style>body{margin:12px}${cssText ?? ''}</style>' +
            text;

  @override
  _HtmlViewState createState() => _HtmlViewState();
}

class _HtmlViewState extends State<HtmlView> {
  late Timer timer;
  double? height;
  late WebViewController controller;
  var loaded = false;

  updateHeight() async {
    final value = await controller
        .evaluateJavascript("document.documentElement.scrollHeight;");
    if (mounted) {
      setState(() {
        height = double.parse(value);
      });
    }
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final uri = Uri.dataFromString(
      widget.html,
      mimeType: 'text/html',
      encoding: Encoding.getByName('utf-8'),
    );
    return Container(
      height: height ??
          1,
      child: WebView(
        initialUrl: uri.toString(),
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (c) async {
          controller = c;
          timer = Timer.periodic(Duration(milliseconds: 1000), (t) {
            updateHeight();
          });
        },
        onPageFinished: (some) async {
          timer.cancel();
          updateHeight();
        },
        navigationDelegate: (request) {
          if (loaded) {
            launchUrl(request.url);
            return NavigationDecision.prevent;
          } else {
            loaded = true;
            return NavigationDecision.navigate;
          }
        },
      ),
    );
  }
}
