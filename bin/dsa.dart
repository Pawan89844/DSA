import 'package:dsa/dsa.dart' as dsa;
import 'algorithms/bubble sort/buble_sort.dart';
import 'algorithms/merge sort/merge_sort.dart';
import 'binarysearchtree/binary_search_tree.dart';
import 'hash/hash_table.dart';
import 'heap/heap.dart';

void main(List<String> arguments) {
  List<int> array1 = [1, 9, 8];
  List<int> array2 = [2, 6, 5];
  print(MergeSort.merge(array1, array2));
}
