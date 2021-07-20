import 'package:flutter/widgets.dart';
import 'package:flutter_github_test/utils/git_color_scheme.dart';
import 'package:flutter_github_test/utils/utils.dart';

enum StateLabelStatus {
  issueOpened,
  issueClosed,
  pullOpened,
  pullClosed,
  pullMerged,
}

const openGreen = Color(0xff2cbe4e);

class StateLabel extends StatelessWidget {
  final StateLabelStatus status;
  final bool small;

  StateLabel(this.status, {this.small = false});

  @override
  Widget build(BuildContext context) {
    late String text;
    IconData? iconData;
    Color? bgColor;

    switch (status) {
      case StateLabelStatus.issueOpened:
        text = 'Open';
        iconData = Octicons.issue_opened;
        bgColor = openGreen;
        break;
      case StateLabelStatus.issueClosed:
        text = 'Closed';
        iconData = Octicons.issue_closed;
        bgColor = GitColors.red600;
        break;
      case StateLabelStatus.pullOpened:
        text = 'Open';
        iconData = Octicons.git_pull_request;
        bgColor = openGreen;
        break;
      case StateLabelStatus.pullClosed:
        text = 'Closed';
        iconData = Octicons.git_pull_request;
        bgColor = GitColors.red600;
        break;
      case StateLabelStatus.pullMerged:
        text = 'Merged';
        iconData = Octicons.git_merge;
        bgColor = GitColors.purple500;
        break;
    }

    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      padding: EdgeInsets.all(6),
      child: Wrap(
        children: <Widget>[
          Icon(iconData, color: GitColors.white, size: 15),
          SizedBox(width: 2),
          Text(
            text,
            style: TextStyle(
              color: GitColors.white,
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}