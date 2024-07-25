import 'dart:io';

class DynamicProgramming {
  int fibnacci(int n) {
    if (n == 0 || n == 1) return n;
    return fibnacci(n - 1) + fibnacci(n - 2);
  }

  void fourStars() {
    for (int i = 0; i < 4; i++) {
      for (int j = 0; j < 4; j++) {
        stdout.write('*');
      }
      stdout.writeln(' ');
    }
  }

  void blankStar() {
    int len = 4;
    for (int i = 0; i < len; i++) {
      for (int j = 0; j < len; j++) {
        if (i == 0 || i == len - 1 || j == 0 || j == len - 1) {
          stdout.write('*');
        } else {
          stdout.write(' ');
        }
      }
      stdout.writeln(' ');
    }
  }
}
