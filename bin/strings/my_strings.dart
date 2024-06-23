class MyString {
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
}
