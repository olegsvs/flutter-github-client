import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:ferry/ferry.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_test/utils/ferry_store.dart';
import 'package:github/github.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:http/http.dart' as http;
import 'package:nanoid/nanoid.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uni_links/uni_links.dart';
import 'package:universal_io/io.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/utils.dart';
import 'account.dart';

const clientId = '';
const clientSecret = '';

class PlatformType {
  static const github = 'github';
}

class DataWithPage<T> {
  T data;
  int cursor;
  bool hasMore;
  int total;
  DataWithPage({
    required this.data,
    required this.cursor,
    required this.hasMore,
    required this.total,
  });
}

class BbPagePayload<T> {
  T data;
  String? cursor;
  bool hasMore;
  int total;
  BbPagePayload({
    required this.data,
    required this.cursor,
    required this.hasMore,
    required this.total,
  });
}

class LoginModel with ChangeNotifier {
  static const _apiPrefix = 'https://api.github.com';

  var hasRequestedReview = false;

  List<Account> _accounts = [];
  int? activeAccountIndex;
  late StreamSubscription<Uri?> _sub;
  bool loading = false;

  List<Account>? get accounts => _accounts;
  Account? get activeAccount {
    if (activeAccountIndex == null || _accounts.isEmpty) return null;
    return _accounts[activeAccountIndex!];
  }

  String get token => activeAccount!.token;

  _addAccount(Account account) async {
    _accounts = [...accounts!, account];
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(StorageKeys.accounts, json.encode(_accounts));
  }

  removeAccount(int index) async {
    if (activeAccountIndex == index) {
      activeAccountIndex = null;
    }
    _accounts.removeAt(index);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(StorageKeys.accounts, json.encode(_accounts));
    notifyListeners();
  }

  Future<void> _onSchemeDetected(Uri? uri) async {
    await closeWebView();

    loading = true;
    notifyListeners();
    final res = await http.post(
      Uri.parse('https://github.com/login/oauth/access_token'),
      headers: {
        HttpHeaders.acceptHeader: 'application/json',
        HttpHeaders.contentTypeHeader: 'application/json',
      },
      body: json.encode({
        'client_id': clientId,
        'client_secret': clientSecret,
        'code': uri!.queryParameters['code'],
        'state': _oauthState,
      }),
    );

    Fimber.d(res.body);

    final token = json.decode(res.body)['access_token'] as String;
    await loginWithToken(token);
  }

  Future<void> loginWithToken(String token) async {
    try {
      final queryData = await query('''
{
  viewer {
    login
    avatarUrl
  }
}
''', token);

      await _addAccount(Account(
        platform: PlatformType.github,
        domain: 'https://github.com',
        token: token,
        login: queryData['viewer']['login'] as String,
        avatarUrl: queryData['viewer']['avatarUrl'] as String,
      ));
    } finally {
      loading = false;
      notifyListeners();
    }
  }

  Future<void> init() async {
    _sub = uriLinkStream.listen(_onSchemeDetected, onError: (err) {
      Fimber.e('getUriLinksStream failed', ex: err);
    });

    var prefs = await SharedPreferences.getInstance();

    try {
      String? str = prefs.getString(StorageKeys.accounts);
      _accounts = (json.decode(str ?? '[]') as List)
          .map((item) => Account.fromJson(item))
          .toList();
      activeAccountIndex = prefs.getInt(StorageKeys.iDefaultAccount);

      if (activeAccount != null) {
        _activeTab = prefs.getInt(
            StorageKeys.getDefaultStartTabKey(activeAccount!.platform)) ??
            0;
      }
    } catch (err) {
      Fimber.e('prefs getAccount failed', ex: err);
      _accounts = [];
    }

    notifyListeners();
  }

  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }

  Future<void> setDefaultAccount(int v) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(StorageKeys.iDefaultAccount, v);
    Fimber.d('write default account: $v');
    notifyListeners();
  }

  var rootKey = UniqueKey();
  reloadApp() {
    rootKey = UniqueKey();
    notifyListeners();
  }

  setActiveAccountAndReload(int index) async {
    rootKey = UniqueKey();
    activeAccountIndex = index;
    setDefaultAccount(activeAccountIndex!);
    final prefs = await SharedPreferences.getInstance();
    _activeTab = prefs.getInt(
        StorageKeys.getDefaultStartTabKey(activeAccount!.platform)) ??
        0;
    _ghClient = null;
    _gqlClient = null;
    notifyListeners();

  }

  var _timeoutDuration = Duration(seconds: 10);

  GitHub? _ghClient;
  GitHub? get ghClient {
    if (token == null) return null;
    if (_ghClient == null) {
      _ghClient = GitHub(auth: Authentication.withToken(token));
    }
    return _ghClient;
  }

  Client? _gqlClient;
  Client? get gqlClient {
    if (token == null) return null;

    if (_gqlClient == null) {
      _gqlClient = Client(
        link: HttpLink(
          _apiPrefix + '/graphql',
          defaultHeaders: {HttpHeaders.authorizationHeader: 'token $token'},
        ),
        cache: Cache(store: FerryStore()),
      );
    }

    return _gqlClient;
  }

  Future<dynamic> query(String query, [String? _token]) async {
    if (_token == null) {
      _token = token;
    }
    if (_token == null) {
      throw 'token is null';
    }

    final res = await http
        .post(Uri.parse(_apiPrefix + '/graphql'),
        headers: {
          HttpHeaders.authorizationHeader: 'token $_token',
          HttpHeaders.contentTypeHeader: 'application/json'
        },
        body: json.encode({'query': query}))
        .timeout(_timeoutDuration);

    final data = json.decode(res.body);

    if (data['errors'] != null) {
      throw data['errors'][0]['message'];
    }

    return data['data'];
  }

  String? _oauthState;
  void redirectToGithubOauth([publicOnly = false]) {
    _oauthState = nanoid();
    final repoScope = publicOnly ? 'public_repo' : 'repo';
    final scope = Uri.encodeComponent(
        ['user', repoScope, 'read:org', 'notifications'].join(','));
    launchUrl(
      'https://github.com/login/oauth/authorize?client_id=$clientId&redirect_uri=githubtheinvadersapp://authed&scope=$scope&state=$_oauthState',
    );
  }

  int _activeTab = 0;
  int get activeTab => _activeTab;

  Future<void> setActiveTab(int v) async {
    _activeTab = v;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(
        StorageKeys.getDefaultStartTabKey(activeAccount!.platform), v);
    Fimber.d('write default start tab for ${activeAccount!.platform}: $v');
    notifyListeners();
  }
}
