import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_test/features/internal/theme.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/error_reload.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/loading.dart';
import 'package:get_it/get_it.dart';

class RefreshWrapper extends StatelessWidget {
  final Widget body;
  final void Function() onRefresh;

  RefreshWrapper({
    required this.onRefresh,
    required this.body,
  });

  AppModel get theme => GetIt.instance.get<AppModel>();

  @override
  Widget build(BuildContext context) {
    switch (theme.theme) {
      case AppThemeType.cupertino:
        return CupertinoScrollbar(
          child: CustomScrollView(
            slivers: <Widget>[
              CupertinoSliverRefreshControl(
                  onRefresh: onRefresh as Future<void> Function()?),
              SliverToBoxAdapter(child: body),
            ],
          ),
        );
      default:
        return RefreshIndicator(
          onRefresh: onRefresh as Future<void> Function(),
          child: Scrollbar(
            child: SingleChildScrollView(child: body),
          ),
        );
    }
  }
}

class ErrorLoadingWrapper extends StatelessWidget {
  final String error;
  final bool loading;
  final void Function() reload;
  final Widget? Function() bodyBuilder;

  ErrorLoadingWrapper({
    required this.error,
    required this.loading,
    required this.reload,
    required this.bodyBuilder,
  });

  @override
  Widget build(BuildContext context) {
    if (error.isNotEmpty) {
      return ErrorReload(text: error, onTap: reload);
    }

    if (loading) {
      return Loading();
    }

    return bodyBuilder()!;
  }
}
