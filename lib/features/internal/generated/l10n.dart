// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Commits`
  String get commits {
    return Intl.message(
      'Commits',
      name: 'commits',
      desc: '',
      args: [],
    );
  }

  /// `Files`
  String get files {
    return Intl.message(
      'Files',
      name: 'files',
      desc: '',
      args: [],
    );
  }

  /// `Actions`
  String get actions {
    return Intl.message(
      'Actions',
      name: 'actions',
      desc: '',
      args: [],
    );
  }

  /// `Contributors`
  String get contributors {
    return Intl.message(
      'Contributors',
      name: 'contributors',
      desc: '',
      args: [],
    );
  }

  /// `Events`
  String get events {
    return Intl.message(
      'Events',
      name: 'events',
      desc: '',
      args: [],
    );
  }

  /// `Gists`
  String get gists {
    return Intl.message(
      'Gists',
      name: 'gists',
      desc: '',
      args: [],
    );
  }

  /// `Issues`
  String get issues {
    return Intl.message(
      'Issues',
      name: 'issues',
      desc: '',
      args: [],
    );
  }

  /// `Remove account`
  String get removeAccount {
    return Intl.message(
      'Remove account',
      name: 'removeAccount',
      desc: '',
      args: [],
    );
  }

  /// `Something bad happens:`
  String get somethingBadHappens {
    return Intl.message(
      'Something bad happens:',
      name: 'somethingBadHappens',
      desc: '',
      args: [],
    );
  }

  /// `Select account`
  String get selectAccount {
    return Intl.message(
      'Select account',
      name: 'selectAccount',
      desc: '',
      args: [],
    );
  }

  /// `GitHub Account`
  String get githubAccount {
    return Intl.message(
      'GitHub Account',
      name: 'githubAccount',
      desc: '',
      args: [],
    );
  }

  /// `Long Press to remove account`
  String get longPressToRemoveAccount {
    return Intl.message(
      'Long Press to remove account',
      name: 'longPressToRemoveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Repositories`
  String get repositories {
    return Intl.message(
      'Repositories',
      name: 'repositories',
      desc: '',
      args: [],
    );
  }

  /// `Organizations`
  String get organizations {
    return Intl.message(
      'Organizations',
      name: 'organizations',
      desc: '',
      args: [],
    );
  }

  /// `Pull requests`
  String get pullRequests {
    return Intl.message(
      'Pull requests',
      name: 'pullRequests',
      desc: '',
      args: [],
    );
  }

  /// `Repository`
  String get repository {
    return Intl.message(
      'Repository',
      name: 'repository',
      desc: '',
      args: [],
    );
  }

  /// `Repository Actions`
  String get repositoryActions {
    return Intl.message(
      'Repository Actions',
      name: 'repositoryActions',
      desc: '',
      args: [],
    );
  }

  /// `Projects`
  String get projects {
    return Intl.message(
      'Projects',
      name: 'projects',
      desc: '',
      args: [],
    );
  }

  /// `Watchers`
  String get watchers {
    return Intl.message(
      'Watchers',
      name: 'watchers',
      desc: '',
      args: [],
    );
  }

  /// `Stars`
  String get stars {
    return Intl.message(
      'Stars',
      name: 'stars',
      desc: '',
      args: [],
    );
  }

  /// `Forks`
  String get forks {
    return Intl.message(
      'Forks',
      name: 'forks',
      desc: '',
      args: [],
    );
  }

  /// `Branches`
  String get branches {
    return Intl.message(
      'Branches',
      name: 'branches',
      desc: '',
      args: [],
    );
  }

  /// `Followers`
  String get followers {
    return Intl.message(
      'Followers',
      name: 'followers',
      desc: '',
      args: [],
    );
  }

  /// `Following`
  String get following {
    return Intl.message(
      'Following',
      name: 'following',
      desc: '',
      args: [],
    );
  }

  /// `Members`
  String get members {
    return Intl.message(
      'Members',
      name: 'members',
      desc: '',
      args: [],
    );
  }

  /// `Me`
  String get me {
    return Intl.message(
      'Me',
      name: 'me',
      desc: '',
      args: [],
    );
  }

  /// `Unfollow`
  String get unfollow {
    return Intl.message(
      'Unfollow',
      name: 'unfollow',
      desc: '',
      args: [],
    );
  }

  /// `Follow`
  String get follow {
    return Intl.message(
      'Follow',
      name: 'follow',
      desc: '',
      args: [],
    );
  }

  /// `News`
  String get news {
    return Intl.message(
      'News',
      name: 'news',
      desc: '',
      args: [],
    );
  }

  /// `Not found`
  String get notFoundMessage {
    return Intl.message(
      'Not found',
      name: 'notFoundMessage',
      desc: '',
      args: [],
    );
  }

  /// `Oops, this page is not implemented yet.`
  String get notFoundTextDisplay {
    return Intl.message(
      'Oops, this page is not implemented yet.',
      name: 'notFoundTextDisplay',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
