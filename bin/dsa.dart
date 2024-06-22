import 'package:dsa/dsa.dart' as dsa;
import 'algorithms/questions.dart';
import 'binarysearchtree/binary_search_tree.dart';
import 'queue/queue.dart';
import 'stack/stack.dart';

void main(List<String> arguments) {
  Questions q = Questions();
  List<int> nums = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2];
  q.containsDuplicate(nums);
  // Stack myStack = Stack();
  // myStack.push(25);
  // myStack.push(36);
  // myStack.printList();
  // print(myStack.isNotEmpty);
  // BinarySearchTree myBST = BinarySearchTree();
  // myBST.insert(47);
  // myBST.insert(21);
  // myBST.insert(76);
  // myBST.insert(18);
  // myBST.insert(27);
  // myBST.insert(52);
  // myBST.insert(82);

  // print(myBST.BFS());
  // print(myBST.contains(8));
}
