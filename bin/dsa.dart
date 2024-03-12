import 'package:dsa/dsa.dart' as dsa;
import 'algorithms/bubble sort/buble_sort.dart';
import 'binarysearchtree/binary_search_tree.dart';
import 'hash/hash_table.dart';
import 'heap/heap.dart';

void main(List<String> arguments) {
  List<int> array = [9, 1, 6, 7, 3, 2, 5, 8];

  BubbleSort.insertionSort(array);
  print(array);
}
