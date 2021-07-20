import 'package:fimber/fimber.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'core/injection/injection.dart';
import 'features/github/presentation/screens/home/home_bloc.dart';
import 'features/github/presentation/screens/home/home_screen.dart';
import 'features/internal/fluro_router.dart';
import 'features/internal/theme.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);
  Fimber.plantTree(DebugTree());

  AppModel theme = GetIt.instance.get<AppModel>();
  await Future.wait([
    theme.init(),
  ]);

  CommonRouter.routes.forEach((screen) {
    theme.router.define(CommonRouter.prefix + screen.path,
        handler: Handler(handlerFunc: screen.handler));
  });
  GithubRouter.routes.forEach((screen) {
    theme.router.define(GithubRouter.prefix + screen.path,
        handler: Handler(handlerFunc: screen.handler));
  });

  // To match status bar color to app bar color
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<HomeBloc>(
        create: (_) => getIt(),
        child: HomeScreen(),
      )
    ],
    child: MyApp(),
  ));
}
