import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_github_test/models/theme.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:provider/provider.dart';

const contributionEmptyColor = '#ebedf0';
const contributionColors = ['#9be9a8', '#40c463', '#30a14e', '#216e39'];

class HideScrollbar extends StatelessWidget {
  final Widget? child;
  const HideScrollbar({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (_) => true,
      child: child!,
    );
  }
}

class ContributionDay {
  String? hexColor;
  int? count;
  ContributionDay({this.hexColor, this.count})
      : assert(hexColor != null || count != null);
}

class ContributionWidget extends StatelessWidget {
  final Iterable<Iterable<ContributionDay>>? weeks;
  ContributionWidget({required this.weeks}) {
    int? maxCount;
    for (var week in weeks!) {
      for (var day in week) {
        if (day.count != null) {
          if (maxCount == null) {
            for (var week in weeks!) {
              for (var day in week) {
                maxCount = max(day.count!, maxCount ?? 0);
              }
            }
          }
          if (day.count == 0) {
            day.hexColor = contributionEmptyColor;
          } else {
            final level = (day.count! * 4) ~/ (maxCount! + 1);
            day.hexColor = contributionColors[level];
          }
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeModel>();
    return Container(
      alignment: Alignment.center,
      padding: CommonStyle.padding,
      child: HideScrollbar(
          child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        reverse: true,
        child: Wrap(
          spacing: 3,
          children: [
            for (final week in weeks!)
              Wrap(
                direction: Axis.vertical,
                spacing: 3,
                children: [
                  for (final day in week)
                    SizedBox(
                      width: 10,
                      height: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: convertColor(
                              day.hexColor,
                            ),
                            borderRadius: BorderRadius.circular(2)),
                      ),
                    )
                ],
              )
          ],
        ),
      )),
    );
  }
}
