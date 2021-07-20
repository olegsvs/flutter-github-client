class Mapper {

  static String parseRepositoryName(String fullName) {
    final ls = fullName.split('/');
    assert(ls.length == 2);
    return ls[0];
  }

  static String parseRepositoryOwnerName(String fullName) {
    final ls = fullName.split('/');
    assert(ls.length == 2);
    return ls[1];
  }


}