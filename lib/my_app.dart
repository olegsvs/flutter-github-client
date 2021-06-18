import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/locale.dart' as l;
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/S.dart';

import 'home.dart';
import 'models/login.dart';
import 'models/theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<LoginModel>(context);
    final theme = Provider.of<ThemeModel>(context);

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
      key: auth.rootKey,
      child: theme.theme == AppThemeType.cupertino
          ? CupertinoApp(
        theme: CupertinoThemeData(brightness: Brightness.light),
        home: Home(),
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
        home: Home(),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        localeListResolutionCallback: localeListResolutionCallback,
      ),
    );
  }
}
