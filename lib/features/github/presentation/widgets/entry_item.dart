import 'package:flutter/cupertino.dart';
import 'package:flutter_github_test/features/internal/theme.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:get_it/get_it.dart';

import 'link.dart';

class EntryItem extends StatelessWidget {
  final int? count;
  final String text;
  final String? url;

  EntryItem({
    required this.text,
    this.count,
    this.url,
  });

  AppModel get theme => GetIt.instance.get<AppModel>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LinkWidget(
        url: url,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 14),
          child: Column(
            children: <Widget>[
              Text(
                count == null ? '?' : numberFormat.format(count),
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: theme.palette.text,
                ),
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  color: theme.palette.secondaryText,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
