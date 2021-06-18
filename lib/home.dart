import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_test/screens/login.dart';
import 'package:flutter_github_test/screens/news.dart';
import 'package:flutter_github_test/screens/user.dart';
import 'package:flutter_github_test/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/S.dart';
import 'models/login.dart';
import 'models/notification.dart';
import 'models/theme.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<NavigatorState> tab1 = GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> tab2 = GlobalKey<NavigatorState>();

  _buildScreen(int index) {
    final auth = Provider.of<LoginModel>(context);
    switch (auth.activeAccount!.platform) {
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

  Widget _buildNotificationIcon(BuildContext context, IconData iconData) {
    final theme = Provider.of<ThemeModel>(context);
    int count = Provider.of<NotificationModel>(context).count;
    if (count == 0) {
      return Icon(iconData);
    }

    return Stack(
      children: <Widget>[
        Icon(iconData),
        Positioned(
            right: -2,
            top: -2,
            child: Icon(Octicons.primitive_dot,
                color: theme.palette.primary, size: 14))
      ],
    );
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

  List<BottomNavigationBarItem> _buildNavigationItems(String platform) {

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
    final theme = Provider.of<ThemeModel>(context);
    final auth = Provider.of<LoginModel>(context);

    if (auth.activeAccount == null) {
      return LoginScreen();
    }

    final navigationItems = _buildNavigationItems(auth.activeAccount!.platform);

    switch (theme.theme) {
      case AppThemeType.cupertino:
        return WillPopScope(
          onWillPop: () async {
            return !(await getNavigatorKey(auth.activeTab)
                .currentState
                ?.maybePop())!;
          },
          child: CupertinoTabScaffold(
            tabBuilder: (context, index) {
              return CupertinoTabView(
                navigatorKey: getNavigatorKey(index),
                builder: (context) {
                  return _buildScreen(index);
                },
              );
            },
            tabBar: CupertinoTabBar(
              items: navigationItems,
              currentIndex: auth.activeTab,
              onTap: (index) {
                if (auth.activeTab == index) {
                  getNavigatorKey(index)
                      .currentState
                      ?.popUntil((route) => route.isFirst);
                } else {
                  auth.setActiveTab(index);
                }
              },
            ),
          ),
        );
      default:
        return Scaffold(
          body: IndexedStack(
            index: auth.activeTab,
            children: [
              for (var i = 0; i < navigationItems.length; i++) _buildScreen(i)
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: theme.palette.primary,
            items: navigationItems,
            currentIndex: auth.activeTab,
            type: BottomNavigationBarType.fixed,
            onTap: (int index) {
              auth.setActiveTab(index);
            },
          ),
        );
    }
  }
}
