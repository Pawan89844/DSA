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

  void patternMatching(String name) {
    // print('Name: ${}');
    // bool isPan = name.endsWith('Pawan');
    // int c = name.compareTo('Pawan Kumar');

    print(name);

    // print('N: $n');
  }
}
