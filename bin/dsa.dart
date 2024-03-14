import 'package:dsa/dsa.dart' as dsa;
import 'algorithms/bubble sort/buble_sort.dart';
import 'algorithms/merge sort/merge_sort.dart';
import 'algorithms/quick sort/quick_sort.dart';
import 'binarysearchtree/binary_search_tree.dart';
import 'hash/hash_table.dart';
import 'heap/heap.dart';

void main(List<String> arguments) {
  List<int> array = [4, 6, 1, 7, 3, 2, 5];
  int returnedIndex = QuickSort.pivot(array, 0, array.length - 1);
  print('Returned Index $returnedIndex');
  print('Array : $array');
}
