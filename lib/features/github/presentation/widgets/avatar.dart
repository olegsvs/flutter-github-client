import 'package:flutter/material.dart';
import 'package:flutter_github_test/features/internal/theme.dart';
import 'package:get_it/get_it.dart';

import 'link.dart';

class AvatarSize {
  static const double extraSmall = 20;
  static const double small = 24;
  static const double medium = 36;
  static const double large = 48;
  static const double extraLarge = 64;
}

class Avatar extends StatelessWidget {
  final String? url;
  final double size;
  final String? linkUrl;
  final BorderRadius? borderRadius;

  Avatar({
    required this.url,
    this.size = AvatarSize.medium,
    this.linkUrl,
    this.borderRadius,
  });
  AppModel get theme => GetIt.instance.get<AppModel>();

  @override
  Widget build(BuildContext context) {
    final fallback = 'images/avatar.png';

    final widget = ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(size / 2),
      child: url == null
          ? Image.asset(fallback, width: size, height: size)
          : FadeInImage.assetNetwork(
              placeholder: fallback,
              image: url!,
              width: size,
              height: size,
              fadeInDuration: Duration(milliseconds: 200),
              fadeOutDuration: Duration(milliseconds: 100),
            ),
    );
    if (linkUrl == null) return widget;
    return LinkWidget(
      child: widget,
      onTap: () {
        theme.push(context, linkUrl!);
      },
    );
  }
}
