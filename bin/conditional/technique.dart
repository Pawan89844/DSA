import 'dart:math' as math;

class Technique with Loops {
  void maxSum(List<int> arr, int k) {
    int windowsSum = 0;
    List<int> result = [];
    for (int i = 0; i < k; i++) {
      windowsSum += arr[i];
    }

    for (int i = k; i < arr.length; i++) {
      //[2, 1, 5, 1, 3, 2]
      windowsSum = windowsSum - arr[i - k] + arr[i];
      result.add(windowsSum);
    }
    print('Windows $result');
  }

  void maxBTwoNumbers(int a, int b) {
    if (a > b) {
      print('Condition Satisfied: $a');
    } else {
      print('Greater value is: $b');
    }
  }

  void maxBThreeNumbers(int num1, int num2, int num3) {
    if (num1 > num2 && num1 > num3) {
      print('Condition Satisfied: $num1');
    } else if (num2 > num3) {
      print('Else if condition satisfied: $num2');
    } else {
      print('Else condition satisfied: $num3');
    }
  }

  void negOrNonNeg(int n) {
    if (n >= 0) {
      print('Positive number: $n');
    } else {
      print('Negetive number: $n');
    }
  }

  void divisible(int n) {
    if (n % 5 == 0 || n % 11 == 0) {
      print('Divisible : $n');
    } else {
      print('Non Divisible: $n');
    }
  }

  void oddEven(int n) {
    if (n % 2 == 0) {
      print('Even No: $n');
    } else {
      print('Odd No: $n');
    }
  }

  void leapYear(int year) {
    if (year % 4 == 0) {
      print('Leap Year: $year');
    } else {
      print('Not a Leap Year: $year');
    }
  }

  void isAlphabet(String char) {
    if (RegExp(r'^[A-Za-z]').hasMatch(char)) {
      print('Value is an Alphabet: $char');
    } else {
      print('Value is not an Alphabet');
    }
  }

  void isVowel(String char) {
    if (char == 'a' ||
        char == 'e' ||
        char == 'i' ||
        char == 'o' ||
        char == 'u') {
      print('Input character is vowel: $char');
    } else {
      print('Input character is not a vowel: $char');
    }
  }

  void isDigit(String char) {
    if (RegExp(r'^[A-Za-z]').hasMatch(char)) {
      print('Value is character: $char');
    } else if (RegExp(r'[0-9]').hasMatch(char)) {
      print('Value is a digit: $char');
    } else {
      print('Neither a Character Nor a Digit: $char');
    }
  }

  void isCase(String char) {
    if (RegExp(r'[A-Z]').hasMatch(char)) {
      print('Upper case: $char');
    } else if (RegExp(r'[a-z]').hasMatch(char)) {
      print('Lower case: $char');
    } else {
      print('Mixed case: $char');
    }
  }
}

mixin class Loops {
  int sum(int n) {
    // i = 1 -> sum = 1
    // i = 2 -> sum = 3
    // i = 3 -> sum = 6
    // i = 4 -> sum = 10
    // i = 5 -> sum = 15
    // i = 6 -> sum = 21
    // i = 7 -> sum = 28
    // i = 8 -> sum = 36
    // i = 9 -> sum = 45
    int sum = 0;
    for (int i = 1; i < n; i++) {
      sum += i;
    }
    return sum;
  }

  int mul(int n) {
    // i = 1 -> mul = 1
    // i = 2 -> mul = 2
    // i = 3 -> mul = 6
    // i = 4 -> mul = 24
    // i = 5 -> mul = 120
    int mul = 1;
    for (int i = 1; i <= n; i++) {
      mul *= i;
    }
    return mul;
  }

  // Recursive function.
  int fact(int n) {
    if (n == 1) {
      return 1;
    } else {
      return n * fact(n - 1);
    }
  }

  double expo(int base, int power) {
    // i = 1 -> value = 4 * 4 = 16
    // i = 2 -> value =
    // int value = 1;
    // for (int i = 1; i <= power; i++) {
    //   value *= base;
    // }
    // return value;
    return math.exp(base);
  }
}
