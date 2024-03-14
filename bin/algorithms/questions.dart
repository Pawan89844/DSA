class Questions {
  void sum(List<int> arr, int sum) {
    for (int i in arr) {
      sum += i;
    }
    print(sum);
  }

  int fact(int n) {
    if (n == 1) return 1;
    return n * fact(n - 1);
  }

  void largestNum(List<int> arr, int larNum) {
    for (int i = 0; i < arr.length; i++) {
      if (arr[i] > larNum) {
        larNum = arr[i];
      }
    }
    print(larNum);
  }

  void missingElement(List<int> arr) {
    for (int i in arr) {
      if (arr.contains(i + 1) == false && arr.last != i) {
        print(i + 1);
      }
    }
  }

  void reverseArray(List<int> arr) {
    for (int i = arr.length - 1; i >= 0; i--) {
      print(arr[i]);
    }
  }

  void findDuplicate(List<int> arr) {
    for (int i = 0; i < arr.length; i++) {
      for (int j = i + 1; j < arr.length; j++) {
        if (arr[i] == arr[j]) {
          print(arr[i]);
        }
      }
    }
  }

  void charCount() {
    String name = 'Pawan Kumar';
    List<String> nameList = name.toLowerCase().split('').toList();
    Map<String, dynamic> count = {};
    for (String i in nameList) {
      if (i != ' ') {
        count[i] = (count[i] ?? 0) + 1;
      }
    }
    print(count);
  }
}
