import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_github_test/features/internal/theme.dart';
import 'package:get_it/get_it.dart';

class CupertinoLink extends StatefulWidget {
  final Widget? child;
  final Function? onTap;

  CupertinoLink({this.child, this.onTap});

  @override
  _CupertinoLinkState createState() => _CupertinoLinkState();
}

class _CupertinoLinkState extends State<CupertinoLink> {
  Color? _color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _color,
      child: GestureDetector(
        onTap: widget.onTap as void Function()?,
        onTapDown: (_) {
          print('down');
          setState(() {
            _color = Colors.black12;
          });
        },
        onTapUp: (_) {
          print('up');
          setState(() {
            _color = null;
          });
        },
        onTapCancel: () {
          print('cacnel');
          setState(() {
            _color = null;
          });
        },
        child: widget.child,
      ),
    );
  }
}

class LinkWidget extends StatelessWidget {
  final Widget child;
  final String? url;
  final Function? onTap;
  final Function? onLongPress;

  LinkWidget({
    required this.child,
    this.url,
    this.onTap,
    this.onLongPress,
  });

  AppModel get theme => GetIt.instance.get<AppModel>();

  @override
  Widget build(BuildContext context) {
    switch (theme.theme) {
      case AppThemeType.cupertino:
        Widget w = CupertinoButton(
          minSize: 0,
          child: child,
          padding: EdgeInsets.zero,
          onPressed: () async {
            if (onTap != null) onTap!();
            if (url != null) theme.push(context, url!);
          },
        );
        if (onLongPress != null) {
          w = GestureDetector(
              onLongPress: onLongPress as void Function()?, child: w);
        }
        return w;
      default:
        return InkWell(
          child: child,
          onTap: () async {
            if (onTap != null) onTap!();
            if (url != null) theme.push(context, url!);
          },
          onLongPress: onLongPress as void Function()?,
        );
    }
  }
}
