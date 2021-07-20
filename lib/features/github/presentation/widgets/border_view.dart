import 'package:flutter/material.dart';
import 'package:flutter_github_test/features/internal/theme.dart';
import 'package:get_it/get_it.dart';

class BorderView extends StatelessWidget {
  final double? height;
  final double leftPadding;

  BorderView({
    this.height,
    this.leftPadding = 0,
  });

  AppModel get theme => GetIt.instance.get<AppModel>();

  @override
  Widget build(BuildContext context) {
    if (height == null) {
      return Container(
        margin: EdgeInsets.only(left: leftPadding),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: theme.palette.border, width: 0),
          ),
        ),
      );
    }

    return Row(
      children: <Widget>[
        SizedBox(
          width: leftPadding,
          height: height,
          child: DecoratedBox(
            decoration: BoxDecoration(color: theme.palette.background),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: height,
            child: DecoratedBox(
              decoration: BoxDecoration(color: theme.palette.border),
            ),
          ),
        ),
      ],
    );
  }
}
