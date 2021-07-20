import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_github_test/features/internal/theme.dart';
import 'package:get_it/get_it.dart';

class Loading extends StatelessWidget {
  final bool more;

  Loading({this.more = false});

  AppModel get theme => GetIt.instance.get<AppModel>();

  Widget _buildIndicator(BuildContext context) {
    switch (theme.theme) {
      case AppThemeType.cupertino:
        return CupertinoActivityIndicator(radius: 12);
      default:
        return SizedBox(
          width: 24,
          height: 24,
          child: CircularProgressIndicator(),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: more ? 20 : 100),
        child: _buildIndicator(context),
      ),
    );
  }
}
