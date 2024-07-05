class Technique {
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
