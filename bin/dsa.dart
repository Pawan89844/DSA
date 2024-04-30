import 'package:dsa/dsa.dart' as dsa;
import 'binarysearchtree/binary_search_tree.dart';
import 'queue/queue.dart';
import 'stack/stack.dart';

void main(List<String> arguments) {
  BinarySearchTree myBST = BinarySearchTree();
  myBST.insert(47);
  myBST.insert(21);
  myBST.insert(76);
  myBST.insert(18);
  myBST.insert(27);
  myBST.insert(52);
  myBST.insert(82);

  print(myBST.BFS());
  // print(myBST.contains(8));
}
