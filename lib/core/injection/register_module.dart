import 'package:ferry/ferry.dart';
import 'package:flutter_github_test/utils/ferry_store.dart';
import 'package:github/github.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:universal_io/io.dart';

@module
abstract class RegisterModule {

  @lazySingleton
  InternetConnectionChecker get connectionChecker => InternetConnectionChecker();

  @lazySingleton
  Client get gqlClient => Client(
        link: HttpLink(
          '',
        ),
        cache: Cache(store: FerryStore()),
      );

  @lazySingleton
  GitHub get ghClient => GitHub();
}
