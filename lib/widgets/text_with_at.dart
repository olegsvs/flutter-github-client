import 'package:flutter/material.dart';
import 'package:flutter_github_test/utils/utils.dart';

class TextWithAt extends StatelessWidget {
  final String text;
  final String Function(String text) linkFactory;
  final TextStyle? style;
  final bool oneLine;

  TextWithAt({
    required this.text,
    required this.linkFactory,
    this.style,
    this.oneLine = false,
  });

  static final _reg = RegExp(r'@[A-Za-z-]+');

  @override
  Widget build(BuildContext context) {
    final matches = _reg.allMatches(text).map((m) => m.group(0)).toList();
    final chunks = text.split(_reg);

    List<TextSpan> spans = [];
    for (var index in List.generate(matches.length, (i) => (i))) {
      if (chunks[index].isNotEmpty) {
        spans.add(TextSpan(text: chunks[index]));
      }
      spans.add(createLinkSpan(
          context, matches[index], linkFactory(matches[index] ?? '')));
    }
    if (chunks.last.isNotEmpty) {
      spans.add(TextSpan(text: chunks.last));
    }

    return Text.rich(
      TextSpan(children: spans, style: style),
      overflow: oneLine ? TextOverflow.ellipsis : TextOverflow.clip,
      maxLines: oneLine ? 1 : null,
    );
  }
}
