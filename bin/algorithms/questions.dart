class Questions {
  int sum(List<int> arr) {
    int sum = 0;
    for (int i in arr) {
      sum += i;
    }
    return sum;
  }

  int reverseNumber(int number, int reverse) {
    while (number != 0) {
      int remainder = number % 10;
      reverse = reverse * 10 + remainder;
      number = number ~/ 10;
    }
    return reverse;
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

  // Leetcode question
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    int i = m - 1;
    int j = n - 1;
    int k = m + n - 1;
    while (j >= 0) {
      if (i >= 0 && nums1[i] > nums2[j]) {
        nums1[k] = nums1[i];
        k--;
        i--;
      } else {
        nums1[k] = nums2[j];
        k--;
        j--;
      }
    }
  }

  //Leetcode question 13. Roman to Integer
  int? romanToInt(String s) {
    Map<String, int> val = {};
    for (int i = 0; i < s.length; i++) {}
    return null;
  }

  bool? containsDuplicate(List<int> nums) {
    Set val = {};
    for (int i = 0; i < nums.length; i++) {
      val.add(nums[i]);
    }
    if (nums.length > val.length) {
      print('True');
    } else {
      print('False');
    }
    print('Set: $val');
    return null;
  }

  int removeElement(List<int> nums, int val) {
    int k = 0;
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != val) {
        nums[k] = nums[i];
        k++;
      }
    }
    return k;
  }

  int? maxProfit(List<int> prices) {
    int min = prices[0];
    int max = 0;

    for (int i = 1; i < prices.length; i++) {
      min = min.compareTo(prices[i]) < 0 ? min : prices[i];
      max = max.compareTo(prices[i] - min) < 0 ? prices[i] - min : max;
    }
    return max;
  }

  List<int>? twoSum(List<int> nums, int target) {
    Map<int, int> num = {};
    for (int i = 0; i < nums.length; i++) {
      int temp = target - nums[i];
      if (num.containsKey(temp)) {
        return [num[temp]!, i];
      }
      num.addAll({nums[i]: i});
    }
    return null;
  }

  bool containsNearbyDuplicate(List<int> nums, int k) {
    Map<int, dynamic> val = {};
    for (int i = 0; i < nums.length; i++) {
      if (val.containsKey(nums[i])) {
        int temp = val[nums[i]]!;
        if ((i - temp).abs() <= k) {
          return true;
        }
      }
      val[nums[i]] = i;
    }
    return false;
  }

  int? passThePillow(int n, int time) {
    int direction = 1;
    int current = 1;
    while (time > 0) {
      current += direction;
      if (current == n || current == 1) {
        direction *= -1;
      }
      time--;
    }
    return current;
  }

  /// Leetcode july challenge.
  int numWaterBottles(int numBottles, int numExchange) {
    int emptyBottle = 0;
    int drunk = 0;

    while (numBottles > 0) {
      drunk += numBottles;
      emptyBottle += numBottles;

      numBottles = emptyBottle ~/ numExchange;
      emptyBottle = emptyBottle % numExchange;
    }
    return drunk;
  }
}
