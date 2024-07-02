class MyMaps {
  List<int> intersection(List<int> nums1, List<int> nums2) {
    Map<int, int> items = {};
    List<int> output = [];
    for (final n in nums1) {
      items[n] = (items[n] ?? 0) + 1;
    }
    for (final n in nums2) {
      if (items.containsKey(n) && items[n] != 0) {
        output.add(n);
        items[n] = (items[n] ?? 0) - 1;
      }
    }
    return output;
  }
}
