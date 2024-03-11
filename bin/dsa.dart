import 'package:dsa/dsa.dart' as dsa;
import 'binarysearchtree/binary_search_tree.dart';
import 'hash/hash_table.dart';
import 'heap/heap.dart';

void main(List<String> arguments) {
  Heap myHeap = Heap();
  myHeap.insert(95);
  myHeap.insert(75);
  myHeap.insert(80);
  myHeap.insert(55);
  myHeap.insert(60);
  myHeap.insert(50);
  myHeap.insert(65);
  print(myHeap.getHeap());
  myHeap.remove();
  print(myHeap.getHeap());
  myHeap.remove();
  print(myHeap.getHeap());
}
