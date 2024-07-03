class MyDS {
  void bufferString() {
    final buffer = StringBuffer('Hello world');
    buffer.write(' Pawan ');
    buffer.writeln();
    buffer.writeln('-' * (buffer.length - 1));
    buffer.clear();
    String s = 'Hello Pawan';
    var str = String.fromEnvironment(s);
    print('STRL $str');
  }

  int strstr(String haystack, String needle) {
    // int m = haystack.length - 1;
    // int n = needle.length - 1;
    for (int i = 0; i < haystack.length - needle.length + 1; i++) {
      // print(haystack.substring(i, needle.length) == needle);
      if (haystack.substring(i, needle.length) == needle) {
        return i;
      }
    }
    return -1;
    // for (int i = 0; i < m; i++) {
    //   if (haystack.substring(i, n) == needle) {
    //     return i;
    //   }
    // }
    // return -1;
  }

  void patternMatching(String haystack, String needle) {
    // int n = haystack.compareTo(needle);

    // print('Name: ${}');
    // bool isPan = name.endsWith('Pawan');
    // int c = name.compareTo('Pawan Kumar');

    // print(name);

    // print('N: $n');
  }
}
