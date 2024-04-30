class DynamicProgramming {
  int fibnacci(int n) {
    if (n == 0 || n == 1) return n;
    return fibnacci(n - 1) + fibnacci(n - 2);
  }
}
