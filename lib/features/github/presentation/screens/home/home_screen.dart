import 'package:fimber/fimber.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github_test/features/github/data/repositories/github_repository.dart';
import 'package:flutter_github_test/features/github/domain/entities/account.dart';
import 'package:flutter_github_test/features/github/presentation/scaffolds/single.dart';
import 'package:flutter_github_test/features/github/presentation/screens/login/login_screen.dart';
import 'package:flutter_github_test/features/github/presentation/screens/news/news_screen.dart';
import 'package:flutter_github_test/features/github/presentation/screens/users/user/user_screen.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/app_bar_title.dart';
import 'package:flutter_github_test/features/github/presentation/widgets/loading.dart';
import 'package:flutter_github_test/features/internal/theme.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_gen/gen_l10n/S.dart';

import 'home_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  AppModel get theme => GetIt.instance.get<AppModel>();
  final GlobalKey<NavigatorState> tab1 = GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> tab2 = GlobalKey<NavigatorState>();

  _buildScreen(int index, Account? account) {
    if (account == null) {
      Fimber.d("_buildScreen null");
      return LoginScreen();
    }
    switch (account.platform) {
      case PlatformType.github:
        switch (index) {
          case 0:
            return GhNewsScreen();
          case 1:
            return GhViewer();
        }
        break;
    }
  }

  GlobalKey<NavigatorState> getNavigatorKey(int index) {
    switch (index) {
      case 0:
        return tab1;
      case 1:
        return tab2;
    }
    return tab1;
  }

  List<BottomNavigationBarItem> _buildNavigationItems(
      String platform, BuildContext context) {
    switch (platform) {
      case PlatformType.github:
        return [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.newspaper_outline),
            activeIcon: Icon(Ionicons.newspaper),
            label: AppLocalizations.of(context)!.news,
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.person_outline),
            activeIcon: Icon(Ionicons.person),
            label: AppLocalizations.of(context)!.me,
          ),
        ];
      default:
        return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      Fimber.d(
          "HomeScreen: new state ${state.toString()}; type: ${state.runtimeType}");
      if (state is InitState) {
        Fimber.d("InitState");
        context.read<HomeBloc>().add(HomeEvent.getCurrentAccount());
        return SingleScaffold(
            title: AppBarTitle(AppLocalizations.of(context)!.selectAccount),
            body: Center(child: Loading()));
      }
      if (state is OnLoadCurrentAccount) {
        if (state.account == null) {
          return LoginScreen();
        }
        final navigationItems =
            _buildNavigationItems(state.account!.platform, context);
        switch (theme.theme) {
          case AppThemeType.cupertino:
            return WillPopScope(
              onWillPop: () async {
                return !(await getNavigatorKey(state.activeTabIndex)
                    .currentState
                    ?.maybePop())!;
              },
              child: CupertinoTabScaffold(
                tabBuilder: (context, index) {
                  return CupertinoTabView(
                    navigatorKey: getNavigatorKey(index),
                    builder: (context) {
                      return _buildScreen(index, state.account);
                    },
                  );
                },
                tabBar: CupertinoTabBar(
                  items: navigationItems,
                  currentIndex: state.activeTabIndex,
                  onTap: (index) {
                    if (state.activeTabIndex == index) {
                      getNavigatorKey(index)
                          .currentState
                          ?.popUntil((route) => route.isFirst);
                    } else {
                      context
                          .read<HomeBloc>()
                          .add(HomeEvent.setActiveTabIndex(index));
                    }
                  },
                ),
              ),
            );
          default:
            return Scaffold(
              body: IndexedStack(
                index: state.activeTabIndex,
                children: [
                  for (var i = 0; i < navigationItems.length; i++)
                    _buildScreen(i, state.account)
                ],
              ),
              bottomNavigationBar: BottomNavigationBar(
                selectedItemColor: theme.palette.primary,
                items: navigationItems,
                currentIndex: state.activeTabIndex,
                type: BottomNavigationBarType.fixed,
                onTap: (int index) {
                  context
                      .read<HomeBloc>()
                      .add(HomeEvent.setActiveTabIndex(index));
                },
              ),
            );
        }
      }
      throw ArgumentError("HomeScreen: Unknown state");
    });
  }
}
