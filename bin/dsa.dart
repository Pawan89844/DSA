import 'algorithms/bubble sort/buble_sort.dart';
import 'algorithms/questions.dart';
import 'algorithms/quick sort/quick_sort.dart';

void main(List<String> arguments) {
  List<int> nums1 = [1, 2, 3, 0, 0, 0];
  List<int> nums2 = [2, 5, 6];
  int m = 3;
  int n = 3;
  Questions q = Questions();
  q.merge(nums1, m, nums2, n);
  // List<int> arr = [1, 5, 2, 7, 6, 9, 3];
  // BubbleSort.bubbleSort(arr);
  // print(arr);
  print(nums1);
}
