import 'package:flutter/material.dart';
import 'package:flutter_github_test/features/internal/theme.dart';
import 'package:get_it/get_it.dart';

class DiffLine {
  String? type;
  int lineNumber;
  String content;
  DiffLine({
    required this.type,
    required this.lineNumber,
    required this.content,
  });
}

class DiffChunk {
  String heading;
  List<DiffLine> lines;
  DiffChunk({required this.heading, required this.lines});
}

class DiffView extends StatelessWidget {
  final String source;
  DiffView(this.source);

  AppModel get theme => GetIt.instance.get<AppModel>();

  @override
  Widget build(BuildContext context) {
    final lines = source.split('\n');
    final chunks = <DiffChunk>[];
    var offset = 0;
    for (final line in lines) {
      if (line.startsWith('@@')) {
        chunks.add(DiffChunk(heading: line, lines: []));
        offset = int.parse(line.substring(4).split(',')[0]);
      } else {
        chunks.last.lines.add(DiffLine(
          type: line.isEmpty ? null : line[0],
          lineNumber: offset,
          content: line,
        ));
        offset++;
      }
    }

    return DefaultTextStyle(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var c in chunks)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  c.heading,
                  style: TextStyle(
                    color: theme.palette.tertiaryText,
                    backgroundColor: Color(0xfffafafa),
                  ),
                ),
                for (var l in c.lines)
                  Text(
                    l.content,
                    style: TextStyle(
                      backgroundColor: l.type == '-'
                          ? Color(0x00fbe9eb)
                          : l.type == '+'
                              ? Color(0xffecfdf0)
                              : null,
                    ),
                  ),
              ],
            ),
        ],
      ),
      style: TextStyle(
        fontSize: 14,
        color: theme.palette.text,
      ),
    );
  }
}
