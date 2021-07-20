mixin GqlQuery {
  static String loginWithTokenQuery = '''
    {
      viewer {
        login
        avatarUrl
      }
    }
    ''';


}
