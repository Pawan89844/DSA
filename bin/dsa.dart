import 'package:dsa/dsa.dart' as dsa;
import 'binarysearchtree/binary_search_tree.dart';

void main(List<String> arguments) {
  BinarySearchTree myBST = BinarySearchTree();
  myBST.insert(5);
  myBST.insert(9);
  myBST.insert(4);
  myBST.insert(10);

  print(myBST.contains(10));
  print(myBST.contains(8));
}
