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
}
