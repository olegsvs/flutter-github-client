import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_test/models/theme.dart';
import 'package:flutter_github_test/scaffolds/common.dart';
import 'package:flutter_github_test/scaffolds/utils.dart';
import 'package:provider/provider.dart';

class TabScaffold extends StatelessWidget {
  final Widget title;
  final Widget body;
  final Widget? action;
  final void Function() onRefresh;
  final List<String> tabs;
  final int activeTab;
  final Function(int index) onTabSwitch;

  TabScaffold({
    required this.title,
    required this.body,
    this.action,
    required this.onRefresh,
    required this.tabs,
    required this.activeTab,
    required this.onTabSwitch,
  });

  Widget _buildTitle(BuildContext context) {
    switch (Provider.of<ThemeModel>(context).theme) {
      case AppThemeType.cupertino:
        return DefaultTextStyle(
          style: DefaultTextStyle.of(context).style.copyWith(fontSize: 14),
          child: Row(
            children: [
              Expanded(
                child: CupertinoSlidingSegmentedControl<int>(
                  groupValue: activeTab,
                  onValueChanged: (v) {
                    if (v == null) return;
                    onTabSwitch(v);
                  },
                  children: tabs.asMap().map((key, text) => MapEntry(
                      key,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(text),
                      ))),
                ),
              ),
            ],
          ),
        );
      default:
        return title;
    }
  }

  @override
  Widget build(BuildContext context) {
    final scaffold = CommonScaffold(
      title: _buildTitle(context),
      body: RefreshWrapper(body: body, onRefresh: onRefresh),
      bottom: TabBar(
        onTap: onTabSwitch,
        tabs: tabs.map((text) => Tab(text: text.toUpperCase())).toList(),
      ),
    );

    switch (Provider.of<ThemeModel>(context).theme) {
      case AppThemeType.cupertino:
        return scaffold;
      default:
        return DefaultTabController(
          length: tabs.length,
          child: scaffold,
        );
    }
  }
}
