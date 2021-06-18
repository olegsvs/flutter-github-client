import 'package:fimber/fimber.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'fluro_router.dart';
import 'models/login.dart';
import 'models/notification.dart';
import 'models/theme.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Fimber.plantTree(DebugTree());

  final notificationModel = NotificationModel();
  final themeModel = ThemeModel();
  final authModel = LoginModel();
  await Future.wait([
    themeModel.init(),
    authModel.init(),
  ]);

  CommonRouter.routes.forEach((screen) {
    themeModel.router.define(CommonRouter.prefix + screen.path,
        handler: Handler(handlerFunc: screen.handler));
  });
  GithubRouter.routes.forEach((screen) {
    themeModel.router.define(GithubRouter.prefix + screen.path,
        handler: Handler(handlerFunc: screen.handler));
  });
  // To match status bar color to app bar color
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => notificationModel),
      ChangeNotifierProvider(create: (context) => themeModel),
      ChangeNotifierProvider(create: (context) => authModel),
    ],
    child: MyApp(),
  ));
}
