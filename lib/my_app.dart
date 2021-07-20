import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github_test/features/github/presentation/screens/home/home_screen.dart';
import 'package:flutter_github_test/features/github/presentation/screens/login/login_screen.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/locale.dart' as l;
import 'package:flutter_gen/gen_l10n/S.dart';

import 'features/github/presentation/screens/home/home_bloc.dart';
import 'injection_container.dart';
import 'features/internal/theme.dart';

class MyApp extends StatelessWidget {

  AppModel get theme => GetIt.instance.get<AppModel>();

  @override
  Widget build(BuildContext context) {
    final LocaleListResolutionCallback localeListResolutionCallback =
        (locales, supportedLocales) {
      try {
        if (theme.locale != null) {
          final intlLocale = l.Locale.parse(theme.locale!);
          locales = [
            Locale.fromSubtags(
              languageCode: intlLocale.languageCode,
              countryCode: intlLocale.countryCode,
              scriptCode: intlLocale.scriptCode,
            ),
            ...locales!
          ];
        }
      } catch (err) {
        print(err);
      }

      for (final locale in locales!) {
        if (AppLocalizations.delegate.isSupported(locale)) {
          return locale;
        }
      }

      return supportedLocales.firstWhere((l) => l.languageCode == 'en');
    };

    return Container(
      key: theme.rootKey,
      child: theme.theme == AppThemeType.cupertino
          ? CupertinoApp(
        theme: CupertinoThemeData(brightness: Brightness.light),
        home: HomeScreen(),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        localeListResolutionCallback: localeListResolutionCallback,
      )
          : MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor:
          Colors.white,
          accentColor: theme.palette.primary,
          scaffoldBackgroundColor: theme.palette.background,
          pageTransitionsTheme: PageTransitionsTheme(
            builders: {
              TargetPlatform.android: ZoomPageTransitionsBuilder(),
            },
          ),
        ),
        home: BlocProvider<HomeBloc>(
          create: (_) => getIt(),
          child: HomeScreen(),
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        localeListResolutionCallback: localeListResolutionCallback,
      ),
    );
  }
}
