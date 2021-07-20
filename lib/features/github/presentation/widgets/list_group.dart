import 'package:flutter/material.dart';

import 'package:flutter_github_test/features/internal/theme.dart';
import 'package:get_it/get_it.dart';
import '../widgets/empty.dart';

class ListGroup<T> extends StatelessWidget {
  final Widget title;
  final List<T> items;
  final Widget Function(T item, int index) itemBuilder;
  final EdgeInsetsGeometry padding;

  ListGroup({
    required this.title,
    required this.items,
    required this.itemBuilder,
    this.padding = const EdgeInsets.only(left: 10, right: 10, bottom: 10),
  });
  AppModel get theme => GetIt.instance.get<AppModel>();

  Widget _buildItem(BuildContext context, MapEntry<int, T> entry) {
    return Container(
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: theme.palette.border)),
      ),
      child: itemBuilder(entry.value, entry.key),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: theme.palette.border),
          borderRadius: BorderRadius.all(Radius.circular(3)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(padding: EdgeInsets.all(8), child: title),
            items.isEmpty
                ? EmptyWidget()
                : Column(
                    children: items
                        .asMap()
                        .entries
                        .map((e) => _buildItem(context, e))
                        .toList())
          ],
        ),
      ),
    );
  }
}
