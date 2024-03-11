import 'package:dsa/dsa.dart' as dsa;
import 'binarysearchtree/binary_search_tree.dart';
import 'hash/hash_table.dart';
import 'heap/heap.dart';

void main(List<String> arguments) {
  Heap myHeap = Heap();
  myHeap.insert(99);
  myHeap.insert(72);
  myHeap.insert(61);
  myHeap.insert(58);
  print(myHeap.getHeap());
  myHeap.insert(100);
  print(myHeap.getHeap());
  myHeap.insert(75);
  print(myHeap.getHeap());
}
