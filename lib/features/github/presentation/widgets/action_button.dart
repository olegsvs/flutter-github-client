import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_test/features/internal/theme.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:get_it/get_it.dart';
import 'package:share/share.dart';

class ActionItem {
  String? text;
  String? url;
  bool isDestructiveAction;
  void Function(BuildContext context)? onTap;
  IconData? iconData;

  ActionItem({
    required this.text,
    this.onTap,
    this.url,
    this.iconData,
    this.isDestructiveAction = false,
  });

  static List<ActionItem> getUrlActions(String? url) {
    return [
      ActionItem(
        text: 'Share',
        iconData: Octicons.rocket,
        onTap: (_) {
          Share.share(url!);
        },
      ),
      ActionItem(
        text: 'Open in Browser',
        iconData: Octicons.globe,
        onTap: (_) {
          launchUrl(url);
        },
      ),
    ];
  }
}

class ActionButton extends StatelessWidget {
  final String title;
  final List<ActionItem> items;
  final IconData iconData;
  final int? selected;

  ActionButton({
    required this.title,
    required this.items,
    this.iconData = Ionicons.ellipsis_horizontal,
    this.selected,
  });
  AppModel get theme => GetIt.instance.get<AppModel>();

  @override
  Widget build(BuildContext context) {
    switch (theme.theme) {
      case AppThemeType.cupertino:
        return CupertinoButton(
          minSize: 0,
          child: Icon(iconData, size: 22),
          padding: EdgeInsets.zero,
          onPressed: () async {
            var value = await showCupertinoModalPopup<int>(
              context: context,
              builder: (BuildContext context) {
                return CupertinoActionSheet(
                  title: Text(title),
                  actions: items.asMap().entries.map((entry) {
                    return CupertinoActionSheetAction(
                      child: Row(
                        children: [
                          Icon(entry.value.iconData),
                          SizedBox(width: 10),
                          Text(
                            entry.value.text!,
                            style: TextStyle(
                                fontWeight: selected == entry.key
                                    ? FontWeight.w500
                                    : FontWeight.w400),
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.pop(context, entry.key);
                      },
                    );
                  }).toList(),
                  cancelButton: CupertinoActionSheetAction(
                    child: const Text('Cancel'),
                    isDefaultAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                );
              },
            );

            if (value != null) {
              if (items[value].onTap != null) items[value].onTap!(context);
              if (items[value].url != null)
                theme.push(context, items[value].url!);
            }
          },
        );
      default:
        return PopupMenuButton(
          icon: Icon(iconData),
          initialValue: selected,
          itemBuilder: (context) {
            return items.asMap().entries.map((entry) {
              return PopupMenuItem(
                value: entry.key,
                child: Row(
                  children: [
                    Icon(entry.value.iconData),
                    SizedBox(width: 10),
                    Text(entry.value.text!)
                  ],
                ),
              );
            }).toList();
          },
          onSelected: (dynamic value) {
            items[value].onTap!(context);
          },
        );
    }
  }
}
